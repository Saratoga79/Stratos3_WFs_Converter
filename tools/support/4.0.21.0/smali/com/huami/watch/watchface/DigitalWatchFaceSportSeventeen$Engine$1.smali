.class Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$1;
.super Lcom/huami/watch/watchface/widget/WeatherDateWidget;


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

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method


# virtual methods
.method protected isAlwaysShowUnit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
