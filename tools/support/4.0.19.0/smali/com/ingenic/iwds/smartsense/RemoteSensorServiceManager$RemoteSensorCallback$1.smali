.class Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;
.super Landroid/os/Handler;
.source "RemoteSensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 215
    const-string v0, "Implement me."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->sensorList:Ljava/util/ArrayList;

    .line 200
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->sensorList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$302(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Z)Z

    .line 202
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)V

    .line 207
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$300(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->access$400(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->access$500(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;)Lcom/ingenic/iwds/smartsense/RemoteSensorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->sensorList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorListener;->onSensorAvailable(Ljava/util/ArrayList;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    iget-object v1, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-static {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$300(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->access$402(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;Z)Z

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$302(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Z)Z

    goto :goto_1

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
