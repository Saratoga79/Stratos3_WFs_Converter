.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;
.super Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDeviceAppCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;
    }
.end annotation


# static fields
.field private static final TYPE_INSTALL_DOING:I = 0x1

.field private static final TYPE_INSTALL_DONE:I


# instance fields
.field private m_appListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

.field private m_handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;-><init>()V

    .line 437
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    .line 515
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_appListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    .line 516
    return-void
.end method

.method static synthetic access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_appListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    return-object v0
.end method


# virtual methods
.method public onDoneDeleteApp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 561
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 563
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void
.end method

.method public onDoneInstallApp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 551
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 552
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 553
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 554
    return-void
.end method

.method public onRemoteAppInfoListAvailable(Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;)V
    .locals 2
    .param p1, "remoteAppInfoList"    # Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 526
    return-void
.end method

.method public onRemoteStorageInfoAvailable(Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V
    .locals 2
    .param p1, "storageInfo"    # Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    return-void
.end method

.method public onResponseClearAllAppDataAndCache(IILjava/lang/String;II)V
    .locals 7
    .param p1, "totalClearCount"    # I
    .param p2, "index"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "typeOfIndex"    # I
    .param p5, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;IILjava/lang/String;II)V

    .line 594
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 598
    return-void
.end method

.method public onResponseClearAppDataOrCache(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestType"    # I
    .param p3, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    invoke-static {v0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 582
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 583
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 584
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 585
    return-void
.end method

.method public onResponsePkgSizeInfo(Lcom/ingenic/iwds/remotedevice/RemotePackageStats;I)V
    .locals 3
    .param p1, "stats"    # Lcom/ingenic/iwds/remotedevice/RemotePackageStats;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->getLocalPackageStats()Landroid/content/pm/PackageStats;

    move-result-object v0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ===localStats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 573
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 575
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    return-void
.end method

.method public onSendFileProgressForInstall(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 541
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 542
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 543
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 544
    return-void
.end method
