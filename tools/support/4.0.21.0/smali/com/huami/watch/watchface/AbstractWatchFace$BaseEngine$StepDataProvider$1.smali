.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

.field final synthetic val$this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    iput-object p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;->val$this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    if-gez p1, :cond_1

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v0, "count is below zero"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    invoke-static {v2, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->access$2202(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->access$2200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->access$2300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p1, v1, v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
