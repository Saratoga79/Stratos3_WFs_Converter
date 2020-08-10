.class public Lcom/huami/watch/watchface/GreenAnalogWatchFace;
.super Lcom/huami/watch/watchface/AbstractWatchFace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;
    }
.end annotation


# static fields
.field public static final WEEKDAYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "Sun."

    const-string v1, "Mon."

    const-string v2, "Tue."

    const-string v3, "Wed."

    const-string v4, "Thu."

    const-string v5, "Fri."

    const-string v6, "Sat."

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/GreenAnalogWatchFace;->WEEKDAYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace;->onCreateEngine()Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace;->onCreateEngine()Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace;->onCreateEngine()Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public onCreateEngine()Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;
    .locals 2

    const/high16 v0, 0x424c0000    # 51.0f

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace;->notifyStatusBarPosition(F)V

    new-instance v0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;-><init>(Lcom/huami/watch/watchface/GreenAnalogWatchFace;Lcom/huami/watch/watchface/GreenAnalogWatchFace$1;)V

    return-object v0
.end method

.method protected slptClockClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huami/watch/watchface/AbstractSlptClock;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/huami/watch/watchface/GreenSlptClock;

    return-object v0
.end method
