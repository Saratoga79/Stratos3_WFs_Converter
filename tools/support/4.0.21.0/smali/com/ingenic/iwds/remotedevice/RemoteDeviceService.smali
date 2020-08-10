.class public Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
.super Landroid/app/Service;
.source "RemoteDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;
    }
.end annotation


# static fields
.field private static mAppUuid:Ljava/lang/String;


# instance fields
.field private mAppCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

.field private mAppTransactorCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;

.field private mClearAllAppDataUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearAppDataUUIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAppUUIDs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDoSettingUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetAppListUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetPkgSizeUUIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetRunningProcessUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetSettingUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetStorgeInfoUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetSysMemUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInstallAppUUIDs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKillProcessUUIDs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerRegistration:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

.field private mProcessCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;

.field private mSettingCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "C3554F59-EA68-84F1-8C79-96907EF327D6"

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mService:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;

    .line 67
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactorCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;

    .line 1621
    return-void
.end method

.method static synthetic access$1000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->clearSettingRequestStack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetAppListUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetStorgeInfoUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAllAppDataUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAppDataUUIDs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSysMemUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetRunningProcessUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mKillProcessUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSettingUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mListenerRegistration:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDoSettingUUIDs:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mInstallAppUUIDs:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->getPackageName(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->clearAllRequestStack()V

    return-void
.end method

.method static synthetic access$2400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDeleteAppUUIDs:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetPkgSizeUUIDs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandler:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mStatusCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->clearAppRequestStack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mProcessCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->clearProcessRequestStack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mSettingCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private clearAllAppRequestStack()V
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetAppListUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1689
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetStorgeInfoUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1690
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAllAppDataUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1691
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mInstallAppUUIDs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1692
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDeleteAppUUIDs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1693
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetPkgSizeUUIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1694
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAppDataUUIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1695
    return-void
.end method

.method private clearAllRequestStack()V
    .locals 0

    .prologue
    .line 1709
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->clearAllAppRequestStack()V

    .line 1710
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->clearProcessRequestStack()V

    .line 1711
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->clearSensorRequestStack()V

    .line 1712
    return-void
.end method

.method private clearAppRequestStack(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetAppListUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1668
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetStorgeInfoUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1669
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAllAppDataUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1670
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mInstallAppUUIDs:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeMapItemByValue(Ljava/util/HashMap;Ljava/lang/Object;)V

    .line 1671
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDeleteAppUUIDs:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeMapItemByValue(Ljava/util/HashMap;Ljava/lang/Object;)V

    .line 1672
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetPkgSizeUUIDs:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeMapItemByValue(Ljava/util/HashMap;Ljava/lang/Object;)V

    .line 1673
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAppDataUUIDs:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeMapItemByValue(Ljava/util/HashMap;Ljava/lang/Object;)V

    .line 1674
    return-void
.end method

.method private clearProcessRequestStack()V
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSysMemUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1699
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetRunningProcessUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1700
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mKillProcessUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1701
    return-void
.end method

.method private clearProcessRequestStack(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSysMemUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1678
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetRunningProcessUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1679
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mKillProcessUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1680
    return-void
.end method

.method private clearSensorRequestStack()V
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDoSettingUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1705
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSettingUUIDs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1706
    return-void
.end method

.method private clearSettingRequestStack(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDoSettingUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1684
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSettingUUIDs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V

    .line 1685
    return-void
.end method

.method private getPackageName(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 1715
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1716
    const/4 v0, 0x0

    .line 1723
    :goto_0
    return-object v0

    .line 1718
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    :goto_1
    const-string v1, "the map should contain only one element"

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 1721
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1718
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeListItemByValue(Ljava/util/LinkedList;Ljava/lang/Object;)V
    .locals 1
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1657
    :cond_0
    return-void
.end method

.method private removeMapItemByValue(Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1661
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1662
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    const-string v0, "onBind"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 160
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mService:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactorCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;

    sget-object v2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppUuid:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 103
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteDeviceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 104
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandler:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    .line 107
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mStatusCallbacks:Landroid/os/RemoteCallbackList;

    .line 108
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppCallbacks:Landroid/os/RemoteCallbackList;

    .line 109
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mProcessCallbacks:Landroid/os/RemoteCallbackList;

    .line 110
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mSettingCallbacks:Landroid/os/RemoteCallbackList;

    .line 111
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mListenerRegistration:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetAppListUUIDs:Ljava/util/LinkedList;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetStorgeInfoUUIDs:Ljava/util/LinkedList;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAllAppDataUUIDs:Ljava/util/LinkedList;

    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mInstallAppUUIDs:Ljava/util/LinkedHashMap;

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDeleteAppUUIDs:Ljava/util/LinkedHashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetPkgSizeUUIDs:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mClearAppDataUUIDs:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSysMemUUIDs:Ljava/util/LinkedList;

    .line 122
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetRunningProcessUUIDs:Ljava/util/LinkedList;

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mKillProcessUUIDs:Ljava/util/LinkedList;

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mGetSettingUUIDs:Ljava/util/LinkedList;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mDoSettingUUIDs:Ljava/util/LinkedList;

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 135
    iput-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 137
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iput-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    const-string v0, "onUnbind"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 151
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
