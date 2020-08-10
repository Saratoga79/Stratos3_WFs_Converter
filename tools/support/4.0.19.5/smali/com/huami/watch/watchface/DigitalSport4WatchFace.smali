.class public Lcom/huami/watch/watchface/DigitalSport4WatchFace;
.super Lcom/huami/watch/watchface/AbstractWatchFace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;
    }
.end annotation


# instance fields
.field private step_distance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->step_distance:I

    return-void
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Ljava/lang/String;FFLandroid/graphics/Paint;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->getStepImgCenterXPos(Ljava/lang/String;FFLandroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Ljava/lang/String;FFLandroid/graphics/Paint;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->getStepTextPosX(Ljava/lang/String;FFLandroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method private computerDataTextLength(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getStepImgCenterXPos(Ljava/lang/String;FFLandroid/graphics/Paint;)I
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->computerDataTextLength(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    sub-float/2addr p3, p2

    iget p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->step_distance:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    float-to-int p1, p3

    return p1
.end method

.method private getStepTextPosX(Ljava/lang/String;FFLandroid/graphics/Paint;)I
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->computerDataTextLength(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    add-float/2addr p3, p2

    iget p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->step_distance:I

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-int p1, p3

    return p1
.end method


# virtual methods
.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [F

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    aget p2, v2, p1

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->onCreateEngine()Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->onCreateEngine()Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->onCreateEngine()Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;

    move-result-object v0

    return-object v0
.end method

.method public onCreateEngine()Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;
    .locals 2

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->notifyStatusBarPosition(F)V

    new-instance v0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;-><init>(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Lcom/huami/watch/watchface/DigitalSport4WatchFace$1;)V

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

    const-class v0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;

    return-object v0
.end method
