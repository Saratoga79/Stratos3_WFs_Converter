.class public Lcom/huami/watch/watchface/widget/TimeDigitalWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private alignAM:Landroid/graphics/Paint$Align;

.field private alignHour:Landroid/graphics/Paint$Align;

.field private alignIndicator:Landroid/graphics/Paint$Align;

.field private alignMinutes:Landroid/graphics/Paint$Align;

.field private alignSeconds:Landroid/graphics/Paint$Align;

.field private amFont:Lcom/huami/watch/watchface/widget/ImageFont;

.field private ampm:I

.field private color:I

.field private gap:I

.field private hCenter:I

.field private height:I

.field private hours:I

.field private hoursText:Ljava/lang/String;

.field private mAMPMColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mColonColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDefaultColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDrawSeconds:Z

.field private mDrawTimeIndicator:Z

.field private mEnableIndicator:Z

.field private mHourColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

.field private mMinuteColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mModel:I

.field private mPaddingToIndicator:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSecondsColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private minutes:I

.field private minutesText:Ljava/lang/String;

.field private secondFont:Lcom/huami/watch/watchface/widget/ImageFont;

.field private seconds:I

.field private secondsText:Ljava/lang/String;

.field private width:I

.field private x:I

.field private xAm:I

.field private xHour:I

.field private xIndicator:I

.field private xMinutes:I

.field private xPm:I

.field private xSeconds:I

.field private y:I

.field private yAm:I

.field private yHour:I

.field private yIndicator:I

.field private yMinutes:I

.field private yPm:I

.field private ySeconds:I


# direct methods
.method public constructor <init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;II)V
    .locals 11

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;-><init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;IIII)V

    return-void
.end method

.method public constructor <init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;IIII)V
    .locals 16

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v15}, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;-><init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;IIIILcom/huami/watch/watchface/widget/ImageFont;Lcom/huami/watch/watchface/widget/ImageFont;IIZ)V

    return-void
.end method

.method public constructor <init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;IIIILcom/huami/watch/watchface/widget/ImageFont;Lcom/huami/watch/watchface/widget/ImageFont;IIZ)V
    .locals 11

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    const/4 v8, 0x0

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mModel:I

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->color:I

    const/16 v9, 0x1e

    iput v9, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->seconds:I

    const/16 v9, 0x9

    iput v9, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutes:I

    const/16 v9, 0xa

    iput v9, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hours:I

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->ampm:I

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mEnableIndicator:Z

    iput-boolean v9, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDrawTimeIndicator:Z

    iput-boolean v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDrawSeconds:Z

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaddingToIndicator:I

    move v8, p1

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mModel:I

    iput v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->x:I

    iput v2, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->y:I

    move/from16 v8, p13

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xSeconds:I

    move/from16 v8, p14

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->ySeconds:I

    move/from16 v8, p15

    iput-boolean v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDrawSeconds:Z

    iput v3, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->width:I

    iget v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->width:I

    ushr-int/2addr v8, v9

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hCenter:I

    iput v4, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->height:I

    move/from16 v8, p7

    iput v8, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->color:I

    iput v5, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->gap:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeDigitalWidget x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gap: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeDigitalWidget"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->secondFont:Lcom/huami/watch/watchface/widget/ImageFont;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->amFont:Lcom/huami/watch/watchface/widget/ImageFont;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->color:I

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDefaultColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->initLayout()V

    iput v6, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xAm:I

    iput v7, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yAm:I

    iput v6, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xPm:I

    iput v7, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yPm:I

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignAM:Landroid/graphics/Paint$Align;

    iget-boolean v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDrawSeconds:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->seconds:I

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->secondsText:Ljava/lang/String;

    :cond_1
    iget v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutes:I

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutesText:Ljava/lang/String;

    iget v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hours:I

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hoursText:Ljava/lang/String;

    return-void
.end method

.method private initLayout()V
    .locals 3

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mModel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yMinutes:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yIndicator:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yHour:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mEnableIndicator:Z

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hCenter:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xIndicator:I

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignIndicator:Landroid/graphics/Paint$Align;

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->getCharWidth(C)I

    move-result v0

    iget v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hCenter:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaddingToIndicator:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xHour:I

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignHour:Landroid/graphics/Paint$Align;

    iget v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hCenter:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaddingToIndicator:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xMinutes:I

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignMinutes:Landroid/graphics/Paint$Align;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignSeconds:Landroid/graphics/Paint$Align;

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->y:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->seconds:I

    iget-boolean p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDrawSeconds:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->seconds:I

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->secondsText:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutes:I

    iget p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutes:I

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutesText:Ljava/lang/String;

    const/4 p1, 0x2

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hours:I

    iget p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hours:I

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hoursText:Ljava/lang/String;

    const/4 p1, 0x3

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->ampm:I

    iget p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xAm:I

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xMinutes:I

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutesText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/huami/watch/watchface/widget/ImageFont;->getFontWidth(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xAm:I

    :cond_1
    iget p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yAm:I

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yMinutes:I

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yAm:I

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mEnableIndicator:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->seconds:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignIndicator:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mColonColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDefaultColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    iget v5, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xIndicator:I

    iget v6, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yIndicator:I

    iget-object v7, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    const-string v4, ":"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignHour:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mHourColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDefaultColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_1
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v4, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->hoursText:Ljava/lang/String;

    iget v5, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xHour:I

    iget v6, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yHour:I

    iget-object v7, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignMinutes:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mMinuteColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDefaultColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_2
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v4, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->minutesText:Ljava/lang/String;

    iget v5, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xMinutes:I

    iget v6, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yMinutes:I

    iget-object v7, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDrawSeconds:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignSeconds:Landroid/graphics/Paint$Align;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_4
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mSecondsColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDefaultColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_3
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->secondFont:Lcom/huami/watch/watchface/widget/ImageFont;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    :goto_4
    move-object v1, v0

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->secondsText:Ljava/lang/String;

    iget v4, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xSeconds:I

    iget v5, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->ySeconds:I

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->alignAM:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mAMPMColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mSecondsColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_5
    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->ampm:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    iget v5, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xPm:I

    iget v6, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yPm:I

    iget-object v7, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    const-string v4, "PM"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    iget-object v8, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mImageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    iget v11, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xAm:I

    iget v12, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yAm:I

    iget-object v13, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaint:Landroid/graphics/Paint;

    const-string v10, "AM"

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    :goto_6
    return-void
.end method

.method public setDrawSeconds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mDrawSeconds:Z

    return-void
.end method

.method public setPaddingToIndicator(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->mPaddingToIndicator:I

    return-void
.end method

.method public setPmPosition(II)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->xPm:I

    iput p2, p0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->yPm:I

    return-void
.end method
