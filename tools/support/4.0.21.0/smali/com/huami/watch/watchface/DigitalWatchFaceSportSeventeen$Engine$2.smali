.class Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$2;
.super Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->onPrepareResources(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 6

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method


# virtual methods
.method protected isSupportProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected loadLevelDrawables(I)[Landroid/graphics/drawable/Drawable;
    .locals 7

    const/16 p1, 0xb

    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$2;->resources:Landroid/content/res/Resources;

    const-string v4, "guard/xinjiyuan/battery/%d.png"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
