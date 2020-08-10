#include <io.h>
#include <stdio.h>
#include <direct.h>
#include <windows.h>

#ifndef _MAX_PATH
#define _MAX_PATH   260
#endif

int scan_path ( const char *path, const char *path2, const char *command, int silent )
{
    char            cwdpath[_MAX_PATH];
    WIN32_FIND_DATA FindFileData;
    HANDLE          hFind;
    int             errors = 0;

    _getcwd ( cwdpath, _MAX_PATH );
    if ( path ) {
        const char *dir = path;
        if ( path2[0] ) dir = path2;
        if ( _chdir  (dir) != 0 ) {
            fprintf ( stderr, "SWEEP: failed to enter directory '%s'\n", path );
            return 1;
        }
    }
    system ( command );

    hFind = FindFirstFile ( "*.*", &FindFileData );

    if ( hFind != INVALID_HANDLE_VALUE ) {
        if ( FindFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY ) {
            if ( strcmp (FindFileData.cFileName, ".") != 0 && strcmp (FindFileData.cFileName, "..") != 0 ) {
                if ( !silent ) fprintf ( stderr, "\nSWEEP: Entering directory: '%s'\n", FindFileData.cFileName );
                errors += scan_path ( FindFileData.cFileName, FindFileData.cAlternateFileName, command, silent );
            }
        }

        while ( FindNextFile (hFind, &FindFileData) ) {
            if ( FindFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY ) {
                if ( strcmp (FindFileData.cFileName, ".") != 0 && strcmp (FindFileData.cFileName, "..") != 0 ) {
                    if ( !silent ) fprintf ( stderr, "\nSWEEP: Entering directory: '%s'\n", FindFileData.cFileName );
                    errors += scan_path ( FindFileData.cFileName, FindFileData.cAlternateFileName, command, silent );
                }
            }
        }

        FindClose ( hFind );
    }

    _chdir ( cwdpath );

    return errors;
}

int main ( int argc, char **argv )
{
    char *command, *p;
    int i, len = 0, ret, silent = 0;

    if ( argc >= 2 && !strcmp (argv[1], "/s") ) silent = 1;
    if ( argc < 2+silent ) {
        fprintf ( stderr,
            "Usage: SWEEP [/s] <command + parameters...>\n"
            "Executes given command in all subdirectories\n"
            "Option /s turns silent mode on\n" );
        return 1;
    }

    for ( i = 1+silent; i < argc; i++ ) {
        len += strlen (argv[i]) + 1;
    }

    if ( (command = (char *)malloc (len)) == NULL ) {
        fprintf ( stderr, "SWEEP: memory allocation failed.\n" );
        return 1;
    }

    p = command;
    p += wsprintf ( p, "%s", argv[1+silent] );
    for ( i = 2+silent; i < argc; i++ ) {
        p += wsprintf ( p, " %s", argv[i] );
    }

    ret = scan_path ( NULL, NULL, command, silent );

    free ( command );

    return ret;
}
