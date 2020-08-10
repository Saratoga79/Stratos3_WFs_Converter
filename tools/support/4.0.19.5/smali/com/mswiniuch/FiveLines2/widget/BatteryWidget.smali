.class public Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;
.super Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;
.source "BatteryWidget.java"


# instance fields
.field private BatteryNum:I

.field private batteryBool:Ljava/lang/Boolean;

.field private batteryData:Lcom/mswiniuch/FiveLines2/data/Battery;

.field private batteryFont:Landroid/text/TextPaint;

.field private batteryIcon0:Landroid/graphics/drawable/Drawable;

.field private batteryIcon10:Landroid/graphics/drawable/Drawable;

.field private batteryIcon100:Landroid/graphics/drawable/Drawable;

.field private batteryIcon20:Landroid/graphics/drawable/Drawable;

.field private batteryIcon30:Landroid/graphics/drawable/Drawable;

.field private batteryIcon40:Landroid/graphics/drawable/Drawable;

.field private batteryIcon50:Landroid/graphics/drawable/Drawable;

.field private batteryIcon60:Landroid/graphics/drawable/Drawable;

.field private batteryIcon70:Landroid/graphics/drawable/Drawable;

.field private batteryIcon80:Landroid/graphics/drawable/Drawable;

.field private batteryIcon90:Landroid/graphics/drawable/Drawable;

.field private leftBattery:F

.field private leftBatteryText:F

.field private numbers:[Ljava/lang/String;

.field private sBattery:Ljava/lang/String;

.field private topBattery:F

.field private topBatteryText:F


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 26
    invoke-direct {p0}, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;-><init>()V

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    .line 47
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->numbers:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildSlptViewComponent(Landroid/app/Service;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Service;",
            ")",
            "Ljava/util/List<",
            "Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 158
    new-array v1, v0, [[B

    .line 165
    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 166
    new-instance v3, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 169
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 170
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 171
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v6, v7}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 168
    invoke-virtual {v2, v3, v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    const/4 v3, 0x2

    .line 173
    iput-byte v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v5, 0x0

    .line 174
    iput-byte v5, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 175
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 176
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f03000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_0

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, 0x280

    .line 180
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 178
    invoke-virtual {v2, v6, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v6, -0x140

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    mul-float v8, v8, v4

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 184
    invoke-virtual {v2, v6, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 189
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f030007

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v5, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    :cond_1
    move v4, v5

    .line 192
    :goto_0
    array-length v6, v1

    const/4 v7, 0x1

    if-ge v4, v6, :cond_2

    const-string v6, "slpt_battery/battery%d.png"

    .line 193
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_2
    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    invoke-direct {v4, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    .line 197
    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    .line 198
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f05002c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v4, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setStart(II)V

    .line 200
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v5, v4, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->show:Z

    .line 203
    :cond_3
    new-array p1, v3, [Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    aput-object v4, p1, v5

    aput-object v2, p1, v7

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;FFFF)V
    .locals 2

    .line 102
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryData:Lcom/mswiniuch/FiveLines2/data/Battery;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryBool:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "%02d"

    const/4 p3, 0x1

    .line 103
    new-array p4, p3, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryData:Lcom/mswiniuch/FiveLines2/data/Battery;

    invoke-virtual {p5}, Lcom/mswiniuch/FiveLines2/data/Battery;->getLevel()I

    move-result p5

    mul-int/lit8 p5, p5, 0x64

    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryData:Lcom/mswiniuch/FiveLines2/data/Battery;

    invoke-virtual {v0}, Lcom/mswiniuch/FiveLines2/data/Battery;->getScale()I

    move-result v0

    div-int/2addr p5, v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v0, 0x0

    aput-object p5, p4, v0

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    .line 105
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryBool:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBatteryText:F

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBatteryText:F

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p4, p5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    :cond_0
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    const-string p4, "100"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 110
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon100:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 112
    :cond_1
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "0"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 113
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "1"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 116
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    :cond_3
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "2"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 119
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon20:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    :cond_4
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "3"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 122
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon30:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    :cond_5
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "4"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 125
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon40:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    :cond_6
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "5"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 128
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon50:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_7
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "6"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 131
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon60:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    :cond_8
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "7"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 134
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon70:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    :cond_9
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "8"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 137
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon80:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    :cond_a
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->sBattery:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, "9"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 140
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon90:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mswiniuch/FiveLines2/data/DataType;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->BATTERY:Lcom/mswiniuch/FiveLines2/data/DataType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Service;)V
    .locals 5

    .line 53
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    .line 54
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    .line 56
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBatteryText:F

    .line 57
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBatteryText:F

    .line 59
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryFont:Landroid/text/TextPaint;

    .line 60
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v1, v2}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryFont:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 65
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryBool:Ljava/lang/Boolean;

    .line 67
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryBool:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon0:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060035

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon10:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060037

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon20:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060038

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon30:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060039

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon40:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon50:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon60:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon70:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon80:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon90:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060036

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon100:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon0:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon10:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon20:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon20:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon20:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon30:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon30:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon30:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon40:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon40:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon40:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon50:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon50:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon50:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon60:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon60:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon60:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon70:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon70:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon70:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon80:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon80:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon80:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon90:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon90:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon90:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon100:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->leftBattery:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon100:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->topBattery:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryIcon100:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onDataUpdate(Lcom/mswiniuch/FiveLines2/data/DataType;Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p2, Lcom/mswiniuch/FiveLines2/data/Battery;

    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;->batteryData:Lcom/mswiniuch/FiveLines2/data/Battery;

    return-void
.end method
