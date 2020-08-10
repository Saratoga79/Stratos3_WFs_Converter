.class public Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;
.super Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;


# instance fields
.field private mFile:Ljava/io/File;

.field private mFirstLocalePath:Ljava/lang/String;

.field private mLocale:Ljava/util/Locale;

.field private mSecondLocalePath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method protected constructor <init>(Ljava/io/File;Ljava/util/Locale;)V
    .locals 3

    invoke-direct {p0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mLocale:Ljava/util/Locale;

    iget-object p2, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mLocale:Ljava/util/Locale;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_r"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mFirstLocalePath:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mSecondLocalePath:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance p2, Ljava/util/zip/ZipFile;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object p2, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not open the file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " message: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mFirstLocalePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    const-string v2, "WatchFaceZipLoader  getZipEntry got "

    if-eqz v1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mSecondLocalePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parseWatchFace()Lcom/huami/watch/watchface/model/WatchFaceModule;
    .locals 2

    const-string v0, "watchface.xml"

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser;->parseWatchFace(Ljava/io/InputStream;)Lcom/huami/watch/watchface/model/WatchFaceModule;

    move-result-object v1

    invoke-static {v0}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->closeInputStream(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/model/WatchFaceModuleItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser;->parseWatchFace(Ljava/io/InputStream;)Lcom/huami/watch/watchface/model/WatchFaceModule;

    move-result-object v0

    invoke-static {p1}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->closeInputStream(Ljava/io/InputStream;)Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModule;->getWatchFaceItemList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public parseWatchFaceZipInfo()Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;
    .locals 5

    const-string v0, "description.xml"

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v1, Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;

    invoke-direct {v1}, Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser;->parseWatchFaceInfo(Ljava/io/InputStream;)Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

    move-result-object v2

    invoke-static {v0}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->closeInputStream(Ljava/io/InputStream;)Z

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/loader/WfzConstants;->isSupportVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".wfz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;->label:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;->previewPath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;->getPreview()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->closeInputStream(Ljava/io/InputStream;)Z

    iput-object v3, v1, Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;->preview:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;->resName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;->getSettings()Z

    move-result v0

    iput-boolean v0, v1, Lcom/huami/watch/watchface/loader/WatchFaceZipInfo;->settings:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method

.method public readFile(Ljava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    new-array v0, v0, [B

    const/4 v2, 0x0

    :try_start_1
    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    invoke-static {p1}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->closeInputStream(Ljava/io/InputStream;)Z

    :goto_3
    return-object v1
.end method

.method public readFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->getZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/loader/WatchFaceZipLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
