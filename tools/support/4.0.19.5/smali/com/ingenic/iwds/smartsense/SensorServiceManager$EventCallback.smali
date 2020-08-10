.class Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;
.super Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub;
.source "SensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/SensorServiceManager;
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

.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/smartsense/SensorServiceManager;Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V
    .locals 1
    .param p2, "listener"    # Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .param p3, "s"    # Lcom/ingenic/iwds/smartsense/Sensor;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub;-><init>()V

    .line 191
    new-instance v0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback$1;-><init>(Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->m_handler:Landroid/os/Handler;

    .line 211
    iput-object p2, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

    .line 212
    iput-object p3, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 213
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    .line 214
    return-void
.end method

.method static synthetic access$200(Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;)Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

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
    .line 224
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x57

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
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
    .line 218
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method
