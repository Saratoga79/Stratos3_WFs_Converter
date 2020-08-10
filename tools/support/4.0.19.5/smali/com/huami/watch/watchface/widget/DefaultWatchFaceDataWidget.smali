.class public abstract Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private mBound:Landroid/graphics/RectF;

.field private mClip:Landroid/graphics/Path;

.field private mClipProgressPath:Landroid/graphics/Path;

.field private mDataType:I

.field private mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

.field private mGPaint:Landroid/graphics/Paint;

.field private mGravity:I

.field private mHeight:I

.field private mLeftIcon:I

.field private mLeftText:I

.field private mMaxDegree:F

.field private mModel:I

.field private mPaddingToDrawable:I

.field private mProcessBitmapRecyled:Z

.field private mProgressBackground:Landroid/graphics/Bitmap;

.field private mProgressBgRecyled:Z

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mStartDegree:F

.field private mTopIcon:I

.field private mTopText:I

.field private mWidth:I

.field private mX:I

.field private mY:I

.field protected resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    const/16 v0, 0x54

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mModel:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGravity:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClipProgressPath:Landroid/graphics/Path;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mStartDegree:F

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mMaxDegree:F

    invoke-static {p6}, Lcom/huami/watch/watchface/util/SingletonWrapper;->isSupportDataType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p6, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mDataType:I

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    iput p2, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mX:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mY:I

    iput p7, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mModel:I

    iput p4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    iput p5, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    if-eqz p8, :cond_0

    iput-object p8, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/huami/watch/watchface/widget/ImageFont;

    const-string p2, "default"

    invoke-direct {p1, p2}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    :goto_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->initLayout()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not support dataType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method private calculateProgress(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClipProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mBound:Landroid/graphics/RectF;

    iget v2, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mStartDegree:F

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mMaxDegree:F

    mul-float p1, p1, v3

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClipProgressPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initLayout()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mModel:I

    const/4 v2, 0x1

    const/16 v5, 0x25

    const/16 v6, 0x2e

    const/16 v7, 0x39

    const/16 v8, 0x38

    const/16 v9, 0x37

    const/16 v10, 0x36

    const/16 v11, 0x35

    const/16 v12, 0x34

    const/16 v13, 0x33

    const/16 v14, 0x32

    const/16 v15, 0x31

    const/16 v3, 0x30

    const/4 v4, 0x2

    if-eq v1, v2, :cond_f

    if-eq v1, v4, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    if-gez v1, :cond_0

    const/16 v1, 0x54

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    :cond_0
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    if-gez v1, :cond_1

    const/16 v1, 0x54

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    :cond_1
    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    div-int/2addr v1, v4

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftText:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0200f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setProgressBackground(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/01/default_0.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_1.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_2.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_3.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_4.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_5.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_6.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_7.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_8.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/default_9.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/dot.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/percent_icon.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2d

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/01/minus.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/space.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2f

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/01/separator.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    :goto_0
    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/celsius.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x2103

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2109

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/01/fahrenheit.png"

    :goto_1
    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    :cond_2
    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_3
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    if-gez v1, :cond_4

    const/16 v1, 0x64

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    :cond_4
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    if-gez v1, :cond_5

    const/16 v1, 0x64

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    :cond_5
    const/4 v1, 0x0

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopText:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftText:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/17_1/0.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/1.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/2.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/3.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/4.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/5.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/6.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/7.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/8.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/9.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/point.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/17_1/percent.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/01/space.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_6
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    if-gez v1, :cond_7

    const/16 v1, 0x64

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    :cond_7
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    if-gez v1, :cond_8

    const/16 v1, 0x18

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    :cond_8
    const/4 v1, 0x5

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_4/font/0.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/1.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/2.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/3.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/4.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/5.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/6.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/7.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/8.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/9.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/dot.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/percent_icon.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2d

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_4/font/minus.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/space.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2f

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_4/font/separator.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_4/font/celsius.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x2103

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2109

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_4/font/fahrenheit.png"

    goto/16 :goto_1

    :cond_9
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    if-gez v1, :cond_a

    const/16 v1, 0x64

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    :cond_a
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    if-gez v1, :cond_b

    const/16 v1, 0x64

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    :cond_b
    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftText:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_3/font/0.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/1.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/2.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/3.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/4.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/5.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/6.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/7.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/8.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/9.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/dot.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/percent_icon.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2d

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_3/font/minus.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/space.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2f

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_3/font/separator.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/model_3/font/celsius.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x2103

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2109

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/model_3/font/fahrenheit.png"

    goto/16 :goto_1

    :cond_c
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    if-gez v1, :cond_d

    const/16 v1, 0x54

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    :cond_d
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    if-gez v1, :cond_e

    const/16 v1, 0x54

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    :cond_e
    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftText:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/03/0.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/1.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/2.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/3.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/4.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/5.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/6.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/7.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/8.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/9.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/dot.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/percent_icon.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2d

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/03/minus.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/space.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2f

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/03/separator.png"

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v3, "datawidget/font/03/celsius.png"

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x2103

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2109

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/03/fahrenheit.png"

    goto/16 :goto_1

    :cond_f
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    if-gez v1, :cond_10

    const/16 v1, 0x78

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    :cond_10
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    if-gez v1, :cond_11

    const/16 v1, 0x15

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    :cond_11
    const/4 v1, 0x7

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGravity:I

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_0.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_1.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_2.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_3.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_4.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_5.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_6.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_7.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_8.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/default_9.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/dot.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/percent_icon.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2d

    iget-object v4, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v5, "datawidget/font/02/minus.png"

    invoke-static {v4, v5}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/space.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v4, 0x20

    invoke-virtual {v1, v4, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2f

    iget-object v4, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v5, "datawidget/font/02/separator.png"

    invoke-static {v4, v5}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v4, "datawidget/font/02/celsius.png"

    invoke-static {v2, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v4, 0x2103

    invoke-virtual {v1, v4, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v2, 0x2109

    iget-object v4, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    const-string v5, "datawidget/font/02/fahrenheit.png"

    invoke-static {v4, v5}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    :cond_12
    iget v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->getCharHeight(C)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopText:I

    :goto_2
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClip:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, -0x40000000    # -2.0f

    iget v5, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget v6, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    add-int/2addr v6, v2

    int-to-float v2, v6

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mBound:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClip:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mBound:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method protected drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftText:I

    iget v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopText:I

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    return-void
.end method

.method public final getDataType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mDataType:I

    return v0
.end method

.method protected abstract getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method protected getModel()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mModel:I

    return v0
.end method

.method protected abstract getProgress()F
.end method

.method protected abstract getText()Ljava/lang/String;
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mX:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mY:I

    return v0
.end method

.method protected abstract isSupportProgress()Z
.end method

.method protected isWithUnit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mModel:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/16 v4, 0x11

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBackground:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v3}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->calculateProgress(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBackground:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->isSupportProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->getProgress()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->calculateProgress(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v0

    iput v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopText:I

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopText:I

    :goto_0
    if-eqz v2, :cond_a

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_a

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v3, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->getFontWidth(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mGravity:I

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    add-int/2addr v10, v8

    add-int/2addr v3, v10

    if-eq v4, v7, :cond_6

    if-eq v4, v6, :cond_5

    iget v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    sub-int/2addr v4, v3

    div-int/2addr v4, v0

    :goto_2
    iput v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    goto :goto_3

    :cond_5
    iget v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    sub-int/2addr v4, v3

    goto :goto_2

    :cond_6
    iput v5, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    :goto_3
    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    sub-int/2addr v3, v9

    div-int/2addr v3, v0

    iput v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    iget v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    add-int v5, v3, v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    add-int/2addr v3, v8

    iget v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftText:I

    iget v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mHeight:I

    iget-object v4, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/huami/watch/watchface/widget/ImageFont;->getCharHeight(C)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v0

    iput v3, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopText:I

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_7
    if-eq v4, v7, :cond_9

    if-eq v4, v6, :cond_8

    iget v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    sub-int/2addr v1, v3

    div-int/2addr v1, v0

    iput v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftText:I

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mWidth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    goto :goto_4

    :cond_9
    iput v5, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mLeftIcon:I

    :goto_4
    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setIconTop(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mTopIcon:I

    return-void
.end method

.method public setPaddingToDrawable(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mPaddingToDrawable:I

    return-void
.end method

.method public final setProgressBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setProgressBackground(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public final setProgressBackground(Landroid/graphics/Bitmap;Z)V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBackground:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBgRecyled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-boolean p2, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBgRecyled:Z

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBackground:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public final setProgressBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setProgressBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public final setProgressBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProcessBitmapRecyled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-boolean p2, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProcessBitmapRecyled:Z

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->mProgressBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method
