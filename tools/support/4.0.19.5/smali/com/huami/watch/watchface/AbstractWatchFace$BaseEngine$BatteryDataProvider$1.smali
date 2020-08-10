.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->access$3800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;Landroid/content/Intent;)V

    return-void
.end method
