.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;
.super Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDeviceStatusCallback"
.end annotation


# static fields
.field private static final MSG_ON_REMOTE_DEVICE_READY:I


# instance fields
.field private m_handler:Landroid/os/Handler;

.field private m_statusListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;

.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub;-><init>()V

    .line 624
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback$1;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;->m_handler:Landroid/os/Handler;

    .line 640
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;->m_statusListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;

    .line 641
    return-void
.end method

.method static synthetic access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;->m_statusListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;

    return-object v0
.end method


# virtual methods
.method public onRemoteDeviceReady(Z)V
    .locals 3
    .param p1, "isReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;->m_handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 648
    return-void
.end method
