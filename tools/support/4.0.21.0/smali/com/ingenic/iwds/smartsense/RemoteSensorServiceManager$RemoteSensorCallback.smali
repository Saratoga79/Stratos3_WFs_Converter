.class Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;
.super Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback$Stub;
.source "RemoteSensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSensorCallback"
.end annotation


# static fields
.field private static final MSG_ON_AVAILABLE:I


# instance fields
.field private m_handler:Landroid/os/Handler;

.field private m_listener:Lcom/ingenic/iwds/smartsense/RemoteSensorListener;

.field private status:Z

.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Lcom/ingenic/iwds/smartsense/RemoteSensorListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/ingenic/iwds/smartsense/RemoteSensorListener;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback$Stub;-><init>()V

    .line 192
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback$1;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->m_handler:Landroid/os/Handler;

    .line 222
    iput-object p2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->m_listener:Lcom/ingenic/iwds/smartsense/RemoteSensorListener;

    .line 223
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->uuid:Ljava/lang/String;

    .line 224
    return-void
.end method

.method static synthetic access$400(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->status:Z

    return v0
.end method

.method static synthetic access$402(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;
    .param p1, "x1"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->status:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;)Lcom/ingenic/iwds/smartsense/RemoteSensorListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->m_listener:Lcom/ingenic/iwds/smartsense/RemoteSensorListener;

    return-object v0
.end method


# virtual methods
.method public onSensorAvailable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "sensorList":Ljava/util/List;, "Ljava/util/List<Lcom/ingenic/iwds/smartsense/Sensor;>;"
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void
.end method
