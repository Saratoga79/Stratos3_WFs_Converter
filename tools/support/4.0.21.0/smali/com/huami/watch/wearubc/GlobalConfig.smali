.class public Lcom/huami/watch/wearubc/GlobalConfig;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UbcDebug"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/wearubc/GlobalConfig;->DEBUG:Z

    return-void
.end method
