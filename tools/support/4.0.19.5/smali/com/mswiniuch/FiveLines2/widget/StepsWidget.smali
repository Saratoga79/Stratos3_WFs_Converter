.class public Lcom/mswiniuch/FiveLines2/widget/StepsWidget;
.super Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;
.source "StepsWidget.java"


# instance fields
.field private StepsLevel:I

.field private StepsNum:I

.field private StepsTargetNum:I

.field private leftSteps:F

.field private leftStepsText:F

.field private numbers:[Ljava/lang/String;

.field private sSteps:Ljava/lang/String;

.field private stepsBool:Ljava/lang/Boolean;

.field private stepsData:Lcom/mswiniuch/FiveLines2/data/Steps;

.field private stepsFont:Landroid/text/TextPaint;

.field private stepsIcon0:Landroid/graphics/drawable/Drawable;

.field private stepsIcon10:Landroid/graphics/drawable/Drawable;

.field private stepsIcon100:Landroid/graphics/drawable/Drawable;

.field private stepsIcon20:Landroid/graphics/drawable/Drawable;

.field private stepsIcon30:Landroid/graphics/drawable/Drawable;

.field private stepsIcon40:Landroid/graphics/drawable/Drawable;

.field private stepsIcon50:Landroid/graphics/drawable/Drawable;

.field private stepsIcon60:Landroid/graphics/drawable/Drawable;

.field private stepsIcon70:Landroid/graphics/drawable/Drawable;

.field private stepsIcon80:Landroid/graphics/drawable/Drawable;

.field private stepsIcon90:Landroid/graphics/drawable/Drawable;

.field private topSteps:F

.field private topStepsText:F


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 24
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

    .line 45
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->numbers:[Ljava/lang/String;

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

    .line 154
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 155
    new-array v1, v0, [[B

    .line 158
    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 159
    new-instance v3, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 161
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 162
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f04005a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 163
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v6, v7}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 160
    invoke-virtual {v2, v3, v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    const/4 v3, 0x2

    .line 166
    iput-byte v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v5, 0x0

    .line 167
    iput-byte v5, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 168
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 169
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_0

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, 0x280

    .line 173
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 171
    invoke-virtual {v2, v6, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v6, -0x140

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050065

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

    .line 177
    invoke-virtual {v2, v6, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 182
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f030026

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v5, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    :cond_1
    move v4, v5

    .line 185
    :goto_0
    array-length v6, v1

    const/4 v7, 0x1

    if-ge v4, v6, :cond_2

    const-string v6, "slpt_steps/steps%d.png"

    .line 186
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

    .line 189
    :cond_2
    new-instance v4, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;

    invoke-direct {v4, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;-><init>(I)V

    .line 190
    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setImagePictureArray([[B)Z

    .line 191
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f050063

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v4, v0, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setStart(II)V

    .line 193
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v5, v4, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->show:Z

    .line 195
    :cond_3
    new-array p1, v3, [Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    aput-object v2, p1, v5

    aput-object v4, p1, v7

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;FFFF)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsData:Lcom/mswiniuch/FiveLines2/data/Steps;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsBool:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 105
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsData:Lcom/mswiniuch/FiveLines2/data/Steps;

    invoke-virtual {p2}, Lcom/mswiniuch/FiveLines2/data/Steps;->getTarget()I

    move-result p2

    iput p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsTargetNum:I

    .line 106
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsData:Lcom/mswiniuch/FiveLines2/data/Steps;

    invoke-virtual {p2}, Lcom/mswiniuch/FiveLines2/data/Steps;->getSteps()I

    move-result p2

    iput p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsNum:I

    .line 107
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsNum:I

    int-to-float p2, p2

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsTargetNum:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const-string p2, "%d"

    const/4 p3, 0x1

    .line 108
    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsNum:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->sSteps:Ljava/lang/String;

    .line 111
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsBool:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->sSteps:Ljava/lang/String;

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftStepsText:F

    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topStepsText:F

    iget-object p5, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 116
    :cond_0
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsNum:I

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsTargetNum:I

    if-lt p2, p3, :cond_1

    .line 117
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon100:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 119
    :cond_1
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x5a

    if-lt p2, p3, :cond_2

    .line 120
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon90:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 122
    :cond_2
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x50

    if-lt p2, p3, :cond_3

    .line 123
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon80:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 125
    :cond_3
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x46

    if-lt p2, p3, :cond_4

    .line 126
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon70:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 128
    :cond_4
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x3c

    if-lt p2, p3, :cond_5

    .line 129
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon60:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 131
    :cond_5
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x32

    if-lt p2, p3, :cond_6

    .line 132
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon50:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 134
    :cond_6
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x28

    if-lt p2, p3, :cond_7

    .line 135
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon40:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 137
    :cond_7
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x1e

    if-lt p2, p3, :cond_8

    .line 138
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon30:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 140
    :cond_8
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0x14

    if-lt p2, p3, :cond_9

    .line 141
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon20:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 143
    :cond_9
    iget p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->StepsLevel:I

    const/16 p3, 0xa

    if-lt p2, p3, :cond_a

    .line 144
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 146
    :cond_a
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon0:Landroid/graphics/drawable/Drawable;

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
    sget-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->STEPS:Lcom/mswiniuch/FiveLines2/data/DataType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Service;)V
    .locals 5

    .line 53
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    .line 54
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    .line 55
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftStepsText:F

    .line 56
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topStepsText:F

    .line 57
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsBool:Ljava/lang/Boolean;

    .line 59
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsFont:Landroid/text/TextPaint;

    .line 60
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsFont:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 65
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsBool:Ljava/lang/Boolean;

    .line 67
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsBool:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon0:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060044

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon10:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon20:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060047

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon30:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060048

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon40:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060049

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon50:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon60:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon70:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon80:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon90:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060045

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon100:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon0:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon10:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon10:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon20:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon20:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon20:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon30:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon30:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon30:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon40:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon40:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon40:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon50:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon50:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon50:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon60:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon60:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon60:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon70:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon70:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon70:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon80:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon80:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon80:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon90:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon90:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon90:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon100:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v0, v0

    iget v1, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v1, v1

    iget v2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->leftSteps:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon100:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->topSteps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsIcon100:Landroid/graphics/drawable/Drawable;

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
    check-cast p2, Lcom/mswiniuch/FiveLines2/data/Steps;

    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;->stepsData:Lcom/mswiniuch/FiveLines2/data/Steps;

    return-void
.end method
