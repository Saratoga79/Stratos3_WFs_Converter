.class Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;
.super Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback$Stub;
.source "RemoteSensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventCallback"
.end annotation


# static fields
.field private static final MSG_ON_ACCURACY:I = 0x57

.field private static final MSG_ON_EVENT:I = 0x13


# instance fields
.field private m_handler:Landroid/os/Handler;

.field private m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

.field sensor:Lcom/ingenic/iwds/smartsense/Sensor;

.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V
    .locals 1
    .param p2, "listener"    # Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .param p3, "s"    # Lcom/ingenic/iwds/smartsense/Sensor;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback$Stub;-><init>()V

    .line 146
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback$1;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->m_handler:Landroid/os/Handler;

    .line 167
    iput-object p2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

    .line 168
    iput-object p3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 169
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    .line 170
    return-void
.end method

.method static synthetic access$200(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;)Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p2, "accuracy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x57

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 182
    return-void
.end method

.method public onSensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/ingenic/iwds/smartsense/SensorEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void
.end method
