.class public Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;
.super Ljava/lang/Object;
.source "IwdsCompatibilityChecker.java"


# static fields
.field private static a:Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;


# instance fields
.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;->b:Z

    .line 36
    new-instance v2, Ljava/io/File;

    const-string v0, "/proc/cpuinfo"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    .line 39
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    const-string v2, "Ingenic Xburst"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;->b:Z

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz v0, :cond_2

    .line 63
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    :cond_2
    :goto_1
    return-void

    .line 48
    :cond_3
    :try_start_3
    const-string v2, "goldfish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;->b:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 61
    :goto_2
    if-eqz v0, :cond_2

    .line 63
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 63
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 67
    :cond_4
    :goto_4
    throw v0

    .line 65
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 61
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 57
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static getInstance()Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;->a:Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;

    invoke-direct {v0}, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;->a:Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;

    .line 81
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;->a:Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;

    return-object v0
.end method


# virtual methods
.method public final check()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/ingenic/iwds/utils/IwdsCompatibilityChecker;->b:Z

    return v0
.end method
