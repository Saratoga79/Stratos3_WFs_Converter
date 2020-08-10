.class Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;
.super Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->onPrepareResources(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProgress:F

.field private mWalk:Ljava/lang/String;

.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;

.field final synthetic val$stepIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;

    move-object/from16 v0, p10

    iput-object v0, v9, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->val$stepIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v9

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;)V

    const-string v0, "0"

    iput-object v0, v9, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->mWalk:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v9, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->mProgress:F

    return-void
.end method


# virtual methods
.method protected getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->val$stepIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method protected getProgress()F
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->mProgress:F

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->mWalk:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupportProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->mWalk:Ljava/lang/String;

    if-lez p2, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;->mProgress:F

    :cond_0
    return-void
.end method
