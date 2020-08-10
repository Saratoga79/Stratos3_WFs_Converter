.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartrateListener"
.end annotation


# instance fields
.field private accuracy:I

.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->resetAccuracy()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heartrate Accuracy reported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   valid? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->accuracy:I

    if-lez p2, :cond_1

    const/16 p1, 0x5a

    if-ne p2, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->access$3500(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heartrate reported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->accuracy:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->access$3402(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;I)I

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Valid heartrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->access$3400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->access$3500(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public resetAccuracy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->accuracy:I

    return-void
.end method
