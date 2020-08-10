.class public Lcom/huami/watch/watchface/widget/TodayFloorTextWidget;
.super Lcom/huami/watch/watchface/widget/AbsTextWidget;


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/huami/watch/watchface/widget/AbsTextWidget;-><init>(IILcom/huami/watch/watchface/widget/ImageFont;)V

    const-string p1, "--"

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TodayFloorTextWidget;->mText:Ljava/lang/String;

    sget-object p1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/widget/TodayFloorTextWidget;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TodayFloorTextWidget;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    aget-object v0, p2, p1

    if-eqz v0, :cond_1

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TodayFloorTextWidget;->mText:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "--"

    goto :goto_0

    :cond_1
    return-void
.end method
