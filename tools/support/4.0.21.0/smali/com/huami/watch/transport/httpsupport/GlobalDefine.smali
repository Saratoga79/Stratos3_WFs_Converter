.class public Lcom/huami/watch/transport/httpsupport/GlobalDefine;
.super Ljava/lang/Object;
.source "GlobalDefine.java"


# static fields
.field public static CURR_REPORT_LIST_VER:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_BLT:Z

.field public static final DEBUG_CLIENT:Z

.field public static final DEBUG_COMPANION:Z

.field public static final DEBUG_CRASH_MONITOR:Z

.field public static final DEBUG_HTTP:Z

.field public static final DEBUG_LD:Z

.field public static final DEBUG_SERIAL_MODE:Z

.field public static final DEBUG_SERVER:Z

.field public static final DEBUG_SRV:Z

.field public static final INTERNAL_ALARM_FOR_WEAR_ASSIST:J = 0x1b77400L

.field public static final INTERNAL_ALARM_FOR_WEAR_SERVICE:J = 0x6ddd00L

.field private static IS_SUPPORT_NEW_SYNC:Z = false

.field public static final IS_WATCH:Z

.field public static final KEY_OF_VER_FOR_REPORT_LIST_PROTOCOL:Ljava/lang/String; = "ver"

.field public static final SPRING_LOG_ENALBE:Z = true

.field public static final TAG_BLT:Ljava/lang/String; = "WH-BLT"

.field public static final TAG_CLIENT:Ljava/lang/String; = "WH-APP"

.field public static final TAG_COMPANION:Ljava/lang/String; = "WH-ASSIST"

.field public static final TAG_CRASH:Ljava/lang/String; = "WH-CRASH"

.field public static final TAG_HTTP:Ljava/lang/String; = "WH-HTTP"

.field public static final TAG_LD:Ljava/lang/String; = "WH-LD"

.field public static final TAG_PREFIX:Ljava/lang/String; = "WH-"

.field public static final TAG_SERIAL_MODE:Ljava/lang/String; = "WH-SERIAL_MODE"

.field public static final TAG_SRV:Ljava/lang/String; = "WH-SRV"

.field public static final VER_OF_REPORT_LIST_PROTOCOL:Ljava/lang/String; = "1"

.field private static sIsOverSea:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->CURR_REPORT_LIST_VER:I

    .line 18
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "watch"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    .line 20
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

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    .line 24
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    .line 25
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    .line 26
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    .line 27
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CRASH_MONITOR:Z

    .line 28
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    .line 29
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_LD:Z

    .line 31
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    .line 32
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SRV:Z

    .line 33
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    and-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_HTTP:Z

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_SUPPORT_NEW_SYNC:Z

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->sIsOverSea:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOverSea()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->sIsOverSea:Z

    return v0
.end method

.method public static saveSyncSupport(Z)V
    .locals 0
    .param p0, "supportNew"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_SUPPORT_NEW_SYNC:Z

    .line 52
    return-void
.end method

.method public static setIsOversea(Z)V
    .locals 0
    .param p0, "isOversea"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->sIsOverSea:Z

    .line 61
    return-void
.end method

.method public static supportNewSync()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_SUPPORT_NEW_SYNC:Z

    return v0
.end method
