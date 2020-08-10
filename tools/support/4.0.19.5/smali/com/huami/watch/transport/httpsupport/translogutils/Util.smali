.class public Lcom/huami/watch/transport/httpsupport/translogutils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final ACTION_DELETE_SUMMARY:Ljava/lang/String; = "com.huami.watch.sport.delete_summary"

.field public static final ACTION_DOWNLOAD_STATISTIC:Ljava/lang/String; = "com.huami.watch.sport.download_statistic"

.field public static final ACTION_HEALTH:Ljava/lang/String; = "com.huami.watch.health.upload_history"

.field public static final ACTION_HEALTH_RATE:Ljava/lang/String; = "com.huami.watch.health.upload_heartrate"

.field public static final ACTION_SPORT_DOWNLOAD_DETAIL:Ljava/lang/String; = "com.huami.watch.sport.download_detail"

.field public static final ACTION_SPORT_DOWNLOAD_SUMMARY:Ljava/lang/String; = "com.huami.watch.sport.download_summary"

.field public static final ACTION_SPORT_UPLOAD_DETAIL:Ljava/lang/String; = "com.huami.watch.sport.upload_detail"

.field public static final ACTION_SPORT_UPLOAD_SUMMARY:Ljava/lang/String; = "com.huami.watch.sport.upload_summary"

.field public static final ACTION_XXX:Ljava/lang/String; = "com.huami.watch.xxx"

.field public static final DEBUG:Z

.field public static final DEBUG_SERVER:Z

.field public static final SPRING_LOG_ENALBE:Z = true

.field public static final TRANS_TAG:Ljava/lang/String; = "LOG_TRANS"

.field public static final TRANS_TAGS:[Ljava/lang/String;

.field public static final TRANS_TAG_HEALTH:Ljava/lang/String; = "_HEALTH"

.field public static final TRANS_TAG_N:Ljava/lang/String; = "LOG_TRANS_NEW"

.field public static final TRANS_TAG_SPORT:Ljava/lang/String; = "_SPORT"

.field public static final TRANS_TAG_TEST:Ljava/lang/String; = "_TEST"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/springchannel.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->DEBUG:Z

    .line 15
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->DEBUG_SERVER:Z

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_SPORT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_HEALTH"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_TEST"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->TRANS_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
