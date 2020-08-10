.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;
.super Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDeviceProcessCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;
    }
.end annotation


# instance fields
.field private m_handler:Landroid/os/Handler;

.field private m_processListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;-><init>()V

    .line 659
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$1;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->m_handler:Landroid/os/Handler;

    .line 656
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->m_processListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

    .line 657
    return-void
.end method

.method static synthetic access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->m_processListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

    return-object v0
.end method


# virtual methods
.method public onDoneKillProcess(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 721
    return-void
.end method

.method public onResponseRunningAppProcessInfo(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V
    .locals 2
    .param p1, "processInfoList"    # Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 713
    return-void
.end method

.method public onResponseSystemMemoryInfo(JJ)V
    .locals 7
    .param p1, "availMemSize"    # J
    .param p3, "totalMemSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 690
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;JJ)V

    .line 692
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->m_handler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 695
    return-void
.end method
