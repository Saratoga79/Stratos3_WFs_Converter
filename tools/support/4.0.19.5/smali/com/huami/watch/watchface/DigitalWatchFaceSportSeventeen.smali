.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;
.super Lcom/huami/watch/watchface/AbstractWatchFace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;

    move-result-object v0

    return-object v0
.end method

.method public onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;
    .locals 2

    const v0, 0x41bccccd    # 23.6f

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->notifyStatusBarPosition(F)V

    new-instance v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$1;)V

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

    const-class v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;

    return-object v0
.end method
