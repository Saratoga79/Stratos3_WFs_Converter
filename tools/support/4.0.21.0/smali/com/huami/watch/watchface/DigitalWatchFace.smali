.class public Lcom/huami/watch/watchface/DigitalWatchFace;
.super Lcom/huami/watch/watchface/AbstractWatchFace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/DigitalWatchFace$Engine;
    }
.end annotation


# static fields
.field static final WEEKDAYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\u661f\u671f\u65e5"

    const-string v1, "\u661f\u671f\u4e00"

    const-string v2, "\u661f\u671f\u4e8c"

    const-string v3, "\u661f\u671f\u4e09"

    const-string v4, "\u661f\u671f\u56db"

    const-string v5, "\u661f\u671f\u4e94"

    const-string v6, "\u661f\u671f\u516d"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/DigitalWatchFace;->WEEKDAYS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFace;->onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFace;->onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFace;->onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public onCreateEngine()Lcom/huami/watch/watchface/DigitalWatchFace$Engine;
    .locals 2

    const/high16 v0, 0x42040000    # 33.0f

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/DigitalWatchFace;->notifyStatusBarPosition(F)V

    new-instance v0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFace;Lcom/huami/watch/watchface/DigitalWatchFace$1;)V

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

    const-class v0, Lcom/huami/watch/watchface/DigitalSlptClock;

    return-object v0
.end method
