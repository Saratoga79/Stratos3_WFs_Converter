.class public Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;
.super Ljava/lang/Object;
.source "SimpleFile.java"


# static fields
.field static final TAG:Ljava/lang/String; = "simpleFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeInputStream(Ljava/io/FileInputStream;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "in"    # Ljava/io/FileInputStream;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "simpleFile"

    const-string v2, "Failed to close file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static closeOutputStream(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "simpleFile"

    const-string v2, "Failed to close file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 35
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 38
    .local v2, "in":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    const-string v5, "simpleFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not exist["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-object v4

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_1

    .line 44
    const-string v5, "simpleFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file can not be read, permission denied["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_1
    move-object v4, v2

    .line 55
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "simpleFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get a file read stream["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 216
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    const-string v5, "simpleFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file can not be write, permission denied["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-object v4

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "simpleFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create the new file["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    move-object v4, v2

    .line 237
    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "simpleFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get a file out stream["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 136
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v3, -0x1

    .line 138
    .local v3, "len":I
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->getInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 139
    if-nez v2, :cond_0

    .line 163
    :goto_0
    return-object v4

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 148
    :goto_1
    if-gtz v3, :cond_1

    .line 149
    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->closeInputStream(Ljava/io/FileInputStream;)Ljava/lang/Boolean;

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "simpleFile"

    const-string v6, "failed to get file len"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-array v0, v3, [B

    .line 155
    const/4 v4, 0x0

    :try_start_1
    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :goto_2
    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->closeInputStream(Ljava/io/FileInputStream;)Ljava/lang/Boolean;

    move-object v4, v0

    .line 163
    goto :goto_0

    .line 156
    :catch_1
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "simpleFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static readFile(Ljava/lang/String;I)[B
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 116
    .local v2, "in":Ljava/io/FileInputStream;
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->getInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 117
    if-nez v2, :cond_0

    .line 118
    const/4 v3, 0x0

    .line 130
    :goto_0
    return-object v3

    .line 121
    :cond_0
    :try_start_0
    new-array v0, p1, [B

    .line 122
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->closeInputStream(Ljava/io/FileInputStream;)Ljava/lang/Boolean;

    move-object v3, v0

    .line 130
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "simpleFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read file["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 168
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 169
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 170
    .local v4, "in":Ljava/io/InputStream;
    const/4 v5, -0x1

    .line 173
    .local v5, "len":I
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 177
    :goto_0
    if-nez v4, :cond_0

    .line 209
    :goto_1
    return-object v6

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e1":Ljava/lang/Exception;
    const-string v7, "simpleFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to open assets file["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    .line 186
    :goto_2
    if-gtz v5, :cond_1

    .line 188
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 189
    :catch_1
    move-exception v2

    .line 190
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "simpleFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close assets file["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 183
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "simpleFile"

    const-string v8, "failed to get file len"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 195
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    new-array v1, v5, [B

    .line 197
    const/4 v6, 0x0

    :try_start_3
    array-length v7, v1

    invoke-virtual {v4, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    move-object v6, v1

    .line 209
    goto :goto_1

    .line 198
    :catch_3
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "simpleFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read file["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    goto :goto_3

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "simpleFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close assets file["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static readFileInt(Ljava/lang/String;I)I
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "default_val"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x0

    .line 83
    new-array v0, v5, [B

    fill-array-data v0, :array_0

    .line 84
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 85
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v3, -0x1

    .line 88
    .local v3, "len":I
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->getInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 89
    if-nez v2, :cond_1

    .line 109
    .end local p1    # "default_val":I
    :cond_0
    :goto_0
    return p1

    .line 93
    .restart local p1    # "default_val":I
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 99
    :goto_1
    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->closeInputStream(Ljava/io/FileInputStream;)Ljava/lang/Boolean;

    .line 101
    if-lez v3, :cond_0

    .line 104
    aget-byte v5, v0, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x0

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x3

    or-int v4, v5, v6

    .local v4, "val":I
    move p1, v4

    .line 109
    goto :goto_0

    .line 94
    .end local v4    # "val":I
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "simpleFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v3, 0x0

    goto :goto_1

    .line 83
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static readFileStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static readFileStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFile(Ljava/lang/String;I)[B

    move-result-object v0

    .line 73
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static writeFile(Ljava/lang/String;[B)Ljava/lang/Boolean;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 268
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 269
    .local v2, "ret":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 271
    .local v1, "out":Ljava/io/FileOutputStream;
    if-nez p1, :cond_0

    .line 272
    const-string v3, "simpleFile"

    const-string v4, "Invalid args"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 290
    :goto_0
    return-object v3

    .line 276
    :cond_0
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->getOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 277
    if-nez v1, :cond_1

    .line 278
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 281
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 282
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 283
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 288
    :goto_1
    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->closeOutputStream(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;

    move-object v3, v2

    .line 290
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "simpleFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write or flush file["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "val"    # I

    .prologue
    .line 257
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 259
    .local v0, "array":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 260
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 261
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 262
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 264
    invoke-static {p0, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFile(Ljava/lang/String;[B)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 257
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static writeFileStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFile(Ljava/lang/String;[B)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
