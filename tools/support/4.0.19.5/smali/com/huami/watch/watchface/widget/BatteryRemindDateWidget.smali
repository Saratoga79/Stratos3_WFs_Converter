.class public Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;
.super Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;


# instance fields
.field private MAX_LEVEL:I

.field private mBattery:Ljava/lang/String;

.field private mBatteryLevel:I

.field private mBatteryPercent:F

.field private mLevels:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 10

    move-object v9, p0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;)V

    const/16 v0, 0xa

    iput v0, v9, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->MAX_LEVEL:I

    const-string v0, "0%"

    iput-object v0, v9, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBattery:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBatteryPercent:F

    const/4 v0, 0x0

    iput v0, v9, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBatteryLevel:I

    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->loadLevelDrawables(I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v9, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mLevels:[Landroid/graphics/drawable/Drawable;

    iget-object v0, v9, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mLevels:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    iput v0, v9, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->MAX_LEVEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 8

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;-><init>(Landroid/content/res/Resources;IIIIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method


# virtual methods
.method protected getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mLevels:[Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBatteryLevel:I

    aget-object p1, p1, v0

    return-object p1
.end method

.method protected getProgress()F
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBatteryPercent:F

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBattery:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupportProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected loadLevelDrawables(I)[Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0200f7

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "datawidget/slpt/watchface_custom_fun_icon_slpt_battery%d.png"

    goto :goto_0

    :cond_0
    const-string p1, "datawidget/model_4/icon/watchface_custom_fun_icon_slpt_battery%d.png"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->resources:Landroid/content/res/Resources;

    const-string v2, "datawidget/model_3/icon/watchface_custom_fun_icon_circle_r.png"

    invoke-static {p1, v2}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "datawidget/model_3/8C/icon/watchface_custom_fun_icon_slpt_battery_%d.png"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0200f8

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "datawidget/slpt/watchface_custom_fun_icon_slpt_battery2_%d.png"

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    const-string p1, "datawidget/slpt/watchface_custom_fun_icon_slpt_battery1_%d.png"

    :goto_0
    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->resources:Landroid/content/res/Resources;

    new-array v6, v0, [Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    aput-object v5, v2, v4

    move v4, v7

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 3

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float p2, p2

    div-float/2addr v1, p2

    iput v1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBatteryPercent:F

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBattery:Ljava/lang/String;

    iget p1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBatteryPercent:F

    iget p2, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->MAX_LEVEL:I

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->mBatteryLevel:I

    :cond_0
    return-void
.end method
