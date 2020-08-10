.class public Lcom/ingenic/iwds/slpt/view/utils/SlptWatchFaceConst;
.super Ljava/lang/Object;
.source "SlptWatchFaceConst.java"


# static fields
.field public static KEY_WAEUP_STATUS_ALL:I

.field public static KEY_WAEUP_STATUS_NONE:I

.field public static KEY_WAEUP_STATUS_UP:I

.field public static KEY_WAKEUP_STATUS_LONG_POWER:I

.field public static WatchFaceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/slpt/view/utils/SlptWatchFaceConst;->WatchFaceLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/ingenic/iwds/slpt/view/utils/SlptWatchFaceConst;->KEY_WAEUP_STATUS_NONE:I

    .line 13
    const/4 v0, 0x1

    sput v0, Lcom/ingenic/iwds/slpt/view/utils/SlptWatchFaceConst;->KEY_WAEUP_STATUS_ALL:I

    .line 15
    const/4 v0, 0x2

    sput v0, Lcom/ingenic/iwds/slpt/view/utils/SlptWatchFaceConst;->KEY_WAEUP_STATUS_UP:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/ingenic/iwds/slpt/view/utils/SlptWatchFaceConst;->KEY_WAKEUP_STATUS_LONG_POWER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
