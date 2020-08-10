.class public Lcom/huami/watch/watchface/widget/DigitDateWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private WEEKS:[Landroid/graphics/Bitmap;

.field private calendarUtil:Lcom/huami/watch/watchface/util/CalendarUtil;

.field private date:Ljava/lang/String;

.field private day:I

.field private leftDate:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

.field private mHeight:I

.field private mModel:I

.field private mWidth:I

.field private month:I

.field private topDate:I

.field private week:I

.field private x:I

.field private y:I

.field private year:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/huami/watch/watchface/widget/DigitDateWidget;-><init>(Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    const/4 v5, 0x0

    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mModel:I

    const/16 v6, 0x7df

    iput v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    const/16 v6, 0xc

    iput v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    iput v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    const/4 v6, 0x7

    iput v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    const-string v7, "12-12"

    iput-object v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    new-array v7, v6, [Landroid/graphics/Bitmap;

    iput-object v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    move/from16 v7, p2

    iput v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->x:I

    move/from16 v7, p3

    iput v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->y:I

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mModel:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v7, "default"

    invoke-direct {v4, v7}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v4, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 v7, 0x4e8c

    const/16 v8, 0x65e5

    const/16 v9, 0x56db

    const/16 v10, 0x4e00

    const/16 v11, 0x12

    const/16 v12, 0xb4

    const/16 v15, 0x2e

    const/16 v13, 0x20

    const/16 v14, 0xa

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_20

    const/16 v2, 0x78

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    goto/16 :goto_e

    :pswitch_0
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_1

    iput v12, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_1
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_2

    iput v11, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_2
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v14, :cond_3

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "datawidget/model_4/font/%d.png"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/font/dot.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/font/space.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_24

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "datawidget/model_4/week/w%d.png"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    new-instance v2, Lcom/huami/watch/watchface/util/CalendarUtil;

    invoke-direct {v2, v1}, Lcom/huami/watch/watchface/util/CalendarUtil;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->calendarUtil:Lcom/huami/watch/watchface/util/CalendarUtil;

    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_5

    iput v12, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_5
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_6

    iput v11, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_6
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u4e00.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e5d

    const-string v4, "datawidget/model_4/week/cn/u4e5d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x516b

    const-string v4, "datawidget/model_4/week/cn/u516b.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x521d

    const-string v4, "datawidget/model_4/week/cn/u521d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u56db.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5915

    const-string v4, "datawidget/model_4/week/cn/u5915.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5e74

    const-string v4, "datawidget/model_4/week/cn/u5e74.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u65e5.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6625

    const-string v4, "datawidget/model_4/week/cn/u6625.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6b63

    const-string v4, "datawidget/model_4/week/cn/u6b63.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x767d

    const-string v4, "datawidget/model_4/week/cn/u767d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x814a

    const-string v4, "datawidget/model_4/week/cn/u814a.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x8c37

    const-string v4, "datawidget/model_4/week/cn/u8c37.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x964d

    const-string v4, "datawidget/model_4/week/cn/u964d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x971c

    const-string v4, "datawidget/model_4/week/cn/u971c.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e03

    const-string v4, "datawidget/model_4/week/cn/u4e03.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u4e8c.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u516d.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x516d

    invoke-virtual {v2, v4, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5341

    const-string v4, "datawidget/model_4/week/cn/u5341.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x56fd

    const-string v4, "datawidget/model_4/week/cn/u56fd.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5927

    const-string v4, "datawidget/model_4/week/cn/u5927.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5e86

    const-string v4, "datawidget/model_4/week/cn/u5e86.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x65e6

    const-string v4, "datawidget/model_4/week/cn/u65e6.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6691

    const-string v4, "datawidget/model_4/week/cn/u6691.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6c34

    const-string v4, "datawidget/model_4/week/cn/u6c34.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x79cb

    const-string v4, "datawidget/model_4/week/cn/u79cb.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x81f3

    const-string v4, "datawidget/model_4/week/cn/u81f3.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x91cd

    const-string v4, "datawidget/model_4/week/cn/u91cd.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x9664

    const-string v4, "datawidget/model_4/week/cn/u9664.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x9732

    const-string v4, "datawidget/model_4/week/cn/u9732.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e09

    const-string v4, "datawidget/model_4/week/cn/u4e09.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e94

    const-string v4, "datawidget/model_4/week/cn/u4e94.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x51ac

    const-string v4, "datawidget/model_4/week/cn/u51ac.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5345

    const-string v4, "datawidget/model_4/week/cn/u5345.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5904

    const-string v4, "datawidget/model_4/week/cn/u5904.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5bd2

    const-string v4, "datawidget/model_4/week/cn/u5bd2.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5eff

    const-string v4, "datawidget/model_4/week/cn/u5eff.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x660e

    const-string v4, "datawidget/model_4/week/cn/u660e.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6708

    const-string v4, "datawidget/model_4/week/cn/u6708.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6e05

    const-string v4, "datawidget/model_4/week/cn/u6e05.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x7acb

    const-string v4, "datawidget/model_4/week/cn/u7acb.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x8282

    const-string v4, "datawidget/model_4/week/cn/u8282.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x95f0

    const-string v4, "datawidget/model_4/week/cn/u95f0.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x96e8

    const-string v4, "datawidget/model_4/week/cn/u96e8.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e2d

    const-string v4, "datawidget/model_4/week/cn/u4e2d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5143

    const-string v4, "datawidget/model_4/week/cn/u5143.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5206

    const-string v4, "datawidget/model_4/week/cn/u5206.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5348

    const-string v4, "datawidget/model_4/week/cn/u5348.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x590f

    const-string v4, "datawidget/model_4/week/cn/u590f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5c0f

    const-string v4, "datawidget/model_4/week/cn/u5c0f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x60ca

    const-string v4, "datawidget/model_4/week/cn/u60ca.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x661f

    const-string v4, "datawidget/model_4/week/cn/u661f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x671f

    const-string v4, "datawidget/model_4/week/cn/u671f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6ee1

    const-string v4, "datawidget/model_4/week/cn/u6ee1.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x7aef

    const-string v4, "datawidget/model_4/week/cn/u7aef.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x86f0

    const-string v4, "datawidget/model_4/week/cn/u86f0.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x9633

    const-string v4, "datawidget/model_4/week/cn/u9633.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x96ea

    const-string v4, "datawidget/model_4/week/cn/u96ea.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x79cd

    const-string v4, "datawidget/model_4/week/cn/u79cd.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x8292

    const-string v4, "datawidget/model_4/week/cn/u8292.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    :goto_3
    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/font/space.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    goto/16 :goto_11

    :pswitch_2
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_7

    iput v12, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_7
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_8

    iput v11, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_8
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v14, :cond_9

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "datawidget/model_4/font/%d.png"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/font/dot.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    goto :goto_3

    :pswitch_3
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_a

    iput v12, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_a
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_b

    iput v11, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_b
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v14, :cond_c

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "datawidget/model_4/font/%d.png"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6, v11, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/font/dot.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/font/space.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u4e00.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u4e8c.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e09

    const-string v4, "datawidget/model_4/week/cn/u4e09.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u56db.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e94

    const-string v4, "datawidget/model_4/week/cn/u4e94.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u516d.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x516d

    invoke-virtual {v2, v4, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_4/week/cn/u65e5.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x661f

    const-string v4, "datawidget/model_4/week/cn/u661f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x671f

    const-string v4, "datawidget/model_4/week/cn/u671f.png"

    goto/16 :goto_d

    :pswitch_4
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_d

    const/16 v2, 0xa0

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_d
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_e

    const/16 v2, 0x1e

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_e
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v14, :cond_f

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "datawidget/model_3/font/%d.png"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6, v11, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/font/dot.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/font/space.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/date/u4e00.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/date/u4e8c.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e09

    const-string v4, "datawidget/model_3/date/u4e09.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/date/u56db.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e94

    const-string v4, "datawidget/model_3/date/u4e94.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/date/u516d.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x516d

    invoke-virtual {v2, v4, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/date/u65e5.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x661f

    const-string v4, "datawidget/model_3/date/u661f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x671f

    const-string v4, "datawidget/model_3/date/u671f.png"

    goto/16 :goto_d

    :pswitch_5
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_10

    const/16 v2, 0xa0

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_10
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_11

    const/16 v2, 0x1e

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_11
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v14, :cond_12

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "datawidget/model_3/font/%d.png"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/font/dot.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/model_3/font/space.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    :cond_13
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v6, :cond_24

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "datawidget/model_3/date/en/week_%d.png"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :pswitch_6
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_14

    iput v13, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_14
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_15

    iput v13, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_15
    iput v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v14, :cond_24

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "datawidget/font/data5/%d.png"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :pswitch_7
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_16

    const/16 v2, 0x78

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_16
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_17

    const/16 v2, 0x15

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_17
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v14, :cond_18

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "datawidget/font/17_1/%d.png"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/font/17_1/point.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v15, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    goto/16 :goto_11

    :pswitch_8
    new-instance v2, Lcom/huami/watch/watchface/util/CalendarUtil;

    invoke-direct {v2, v1}, Lcom/huami/watch/watchface/util/CalendarUtil;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->calendarUtil:Lcom/huami/watch/watchface/util/CalendarUtil;

    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_19

    const/16 v2, 0x78

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_19
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_1a

    const/16 v2, 0x15

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_1a
    iput v4, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/font/lunar/u4e00.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e5d

    const-string v4, "datawidget/font/lunar/u4e5d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x516b

    const-string v4, "datawidget/font/lunar/u516b.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x521d

    const-string v4, "datawidget/font/lunar/u521d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/font/lunar/u56db.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5915

    const-string v4, "datawidget/font/lunar/u5915.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5e74

    const-string v4, "datawidget/font/lunar/u5e74.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/font/lunar/u65e5.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6625

    const-string v4, "datawidget/font/lunar/u6625.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6b63

    const-string v4, "datawidget/font/lunar/u6b63.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x767d

    const-string v4, "datawidget/font/lunar/u767d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x814a

    const-string v4, "datawidget/font/lunar/u814a.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x8c37

    const-string v4, "datawidget/font/lunar/u8c37.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x964d

    const-string v4, "datawidget/font/lunar/u964d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x971c

    const-string v4, "datawidget/font/lunar/u971c.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e03

    const-string v4, "datawidget/font/lunar/u4e03.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/font/lunar/u4e8c.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v3, "datawidget/font/lunar/u516d.png"

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x516d

    invoke-virtual {v2, v4, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5341

    const-string v4, "datawidget/font/lunar/u5341.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x56fd

    const-string v4, "datawidget/font/lunar/u56fd.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5927

    const-string v4, "datawidget/font/lunar/u5927.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5e86

    const-string v4, "datawidget/font/lunar/u5e86.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x65e6

    const-string v4, "datawidget/font/lunar/u65e6.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6691

    const-string v4, "datawidget/font/lunar/u6691.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6c34

    const-string v4, "datawidget/font/lunar/u6c34.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x79cb

    const-string v4, "datawidget/font/lunar/u79cb.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x81f3

    const-string v4, "datawidget/font/lunar/u81f3.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x91cd

    const-string v4, "datawidget/font/lunar/u91cd.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x9664

    const-string v4, "datawidget/font/lunar/u9664.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x9732

    const-string v4, "datawidget/font/lunar/u9732.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e09

    const-string v4, "datawidget/font/lunar/u4e09.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e94

    const-string v4, "datawidget/font/lunar/u4e94.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x51ac

    const-string v4, "datawidget/font/lunar/u51ac.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5345

    const-string v4, "datawidget/font/lunar/u5345.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5904

    const-string v4, "datawidget/font/lunar/u5904.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5bd2

    const-string v4, "datawidget/font/lunar/u5bd2.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5eff

    const-string v4, "datawidget/font/lunar/u5eff.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x660e

    const-string v4, "datawidget/font/lunar/u660e.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6708

    const-string v4, "datawidget/font/lunar/u6708.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6e05

    const-string v4, "datawidget/font/lunar/u6e05.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x7acb

    const-string v4, "datawidget/font/lunar/u7acb.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x8282

    const-string v4, "datawidget/font/lunar/u8282.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x95f0

    const-string v4, "datawidget/font/lunar/u95f0.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x96e8

    const-string v4, "datawidget/font/lunar/u96e8.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x4e2d

    const-string v4, "datawidget/font/lunar/u4e2d.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5143

    const-string v4, "datawidget/font/lunar/u5143.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5206

    const-string v4, "datawidget/font/lunar/u5206.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5348

    const-string v4, "datawidget/font/lunar/u5348.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x590f

    const-string v4, "datawidget/font/lunar/u590f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x5c0f

    const-string v4, "datawidget/font/lunar/u5c0f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x60ca

    const-string v4, "datawidget/font/lunar/u60ca.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x661f

    const-string v4, "datawidget/font/lunar/u661f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x671f

    const-string v4, "datawidget/font/lunar/u671f.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x6ee1

    const-string v4, "datawidget/font/lunar/u6ee1.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x7aef

    const-string v4, "datawidget/font/lunar/u7aef.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x86f0

    const-string v4, "datawidget/font/lunar/u86f0.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x9633

    const-string v4, "datawidget/font/lunar/u9633.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x96ea

    const-string v4, "datawidget/font/lunar/u96ea.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x79cd

    const-string v4, "datawidget/font/lunar/u79cd.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const v3, 0x8292

    const-string v4, "datawidget/font/lunar/u8292.png"

    goto/16 :goto_d

    :pswitch_9
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_1b

    const/16 v2, 0x78

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_1b
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_1c

    const/16 v2, 0x15

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_1c
    iput v4, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    if-lez v3, :cond_1d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_1d
    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_b
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v6, :cond_24

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    invoke-static {v1, v7}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :pswitch_a
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    if-gtz v2, :cond_1e

    const/16 v2, 0x78

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    :cond_1e
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_1f

    const/16 v2, 0x15

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_1f
    iput v4, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x30

    const-string v4, "datawidget/font/02/default_0.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x31

    const-string v4, "datawidget/font/02/default_1.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x32

    const-string v4, "datawidget/font/02/default_2.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x33

    const-string v4, "datawidget/font/02/default_3.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x34

    const-string v4, "datawidget/font/02/default_4.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x35

    const-string v4, "datawidget/font/02/default_5.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x36

    const-string v4, "datawidget/font/02/default_6.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x37

    const-string v4, "datawidget/font/02/default_7.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x38

    const-string v4, "datawidget/font/02/default_8.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x39

    const-string v4, "datawidget/font/02/default_9.png"

    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v3, 0x2d

    const-string v4, "datawidget/font/02/minus.png"

    :goto_d
    invoke-static {v1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    goto :goto_11

    :cond_20
    :goto_e
    iget v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    if-gtz v2, :cond_21

    const/16 v2, 0x15

    iput v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mHeight:I

    :cond_21
    iput v5, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v2, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/widget/ImageFont;->size()I

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v14, :cond_22

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/android/date_%d.png"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v7, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-static {v2, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8, v3}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_22
    const-string v2, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/android/minus.png"

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/16 v7, 0x2d

    invoke-virtual {v3, v7, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    :cond_23
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v6, :cond_24

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    invoke-static {v1, v7}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_24
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->y:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    array-length p1, p2

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    const/4 p1, 0x1

    aget-object v0, p2, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    const/4 v0, 0x2

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    const/4 v1, 0x3

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mModel:I

    const-string v1, "-"

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    invoke-static {v2}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    add-int/lit8 p2, p2, -0x30

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    sub-int/2addr v2, p1

    aget-object p1, v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    :goto_1
    div-int/2addr p2, v0

    iput p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->leftDate:I

    goto/16 :goto_6

    :pswitch_0
    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    const-string v3, "yyyy.MM.dd "

    invoke-static {v3, p2, v1, v2}, Lcom/huami/watch/watchface/util/Util;->formatDate(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    sub-int/2addr v2, p1

    aget-object p1, v1, v2

    goto :goto_3

    :pswitch_1
    iget-object p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->calendarUtil:Lcom/huami/watch/watchface/util/CalendarUtil;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/util/CalendarUtil;->getHolidayString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " \u661f\u671f"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_2
    iget p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    const-string v2, "yyyy.MM.dd"

    invoke-static {v2, p1, p2, v1}, Lcom/huami/watch/watchface/util/Util;->formatDate(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_3
    new-instance p2, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    iget v3, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    const-string v4, "yyyy.MM.dd \u661f\u671f"

    invoke-static {v4, v1, v2, v3}, Lcom/huami/watch/watchface/util/Util;->formatDate(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_4
    new-instance p2, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    iget v3, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    const-string v4, "MM.dd \u661f\u671f"

    invoke-static {v4, v1, v2, v3}, Lcom/huami/watch/watchface/util/Util;->formatDate(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    :goto_2
    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->getWeekNumberZh(I)C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_5
    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    const-string v3, "MM.dd "

    invoke-static {v3, p2, v1, v2}, Lcom/huami/watch/watchface/util/Util;->formatDate(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    sub-int/2addr v2, p1

    aget-object p1, v1, v2

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->getFontWidth(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p2, p1

    goto/16 :goto_1

    :pswitch_6
    iget p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->year:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_8
    iget-object p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->calendarUtil:Lcom/huami/watch/watchface/util/CalendarUtil;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/CalendarUtil;->getHolidayString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :pswitch_9
    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    sub-int/2addr v2, p1

    aget-object p1, v1, v2

    goto/16 :goto_0

    :pswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->month:I

    invoke-static {p2}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->day:I

    invoke-static {p2}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    iget p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mWidth:I

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->getFontWidth(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    iput p1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->leftDate:I

    :cond_0
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mModel:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->leftDate:I

    add-int/lit8 v1, v1, 0x30

    int-to-float v1, v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    iget v4, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->leftDate:I

    iget v5, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->week:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    iget v1, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->leftDate:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :goto_1
    :pswitch_2
    iget-object v4, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->date:Ljava/lang/String;

    iget v7, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->leftDate:I

    iget v8, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->topDate:I

    iget-object v9, p0, Lcom/huami/watch/watchface/widget/DigitDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
