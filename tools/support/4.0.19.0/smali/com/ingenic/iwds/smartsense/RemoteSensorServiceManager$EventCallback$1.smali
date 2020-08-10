.class Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback$1;
.super Landroid/os/Handler;
.source "RemoteSensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 159
    const/4 v0, 0x1

    const-string v1, "Implement me."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 150
    :sswitch_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->access$200(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;)Lcom/ingenic/iwds/smartsense/SensorEventListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorEvent;

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/smartsense/SensorEventListener;->onSensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->access$200(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;)Lcom/ingenic/iwds/smartsense/SensorEventListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/ingenic/iwds/smartsense/SensorEventListener;->onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x57 -> :sswitch_1
    .end sparse-switch
.end method
