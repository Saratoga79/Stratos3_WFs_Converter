.class public Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.super Ljava/lang/Object;
.source "DeviceManagerProxy.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;,
        Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearCacheObserver;,
        Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;,
        Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageStatsObserver;,
        Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageDeleteObserver;,
        Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageInstallObserver;
    }
.end annotation


# static fields
.field public static final CLEAR_APP_DATA_ACTION_TEMPLATE:Ljava/lang/String; = "ingenic.intent.action.%s_DATA_CLEARED"

.field private static mAppUuid:Ljava/lang/String;

.field private static sInstance:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# instance fields
.field private mAM:Landroid/app/ActivityManager;

.field private mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

.field private mAppTransactorCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

.field public mContext:Landroid/content/Context;

.field private mDM:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

.field private mDMConnectionCallbacks:Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

.field private mDMServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

.field private mInstallAppLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "C3554F59-EA68-84F1-8C79-96907EF327D6"

    sput-object v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppUuid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mDMConnectionCallbacks:Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    .line 487
    new-instance v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactorCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onApkFileReceived(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestGetAppList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestGetStorageInfo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestInstallApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestDeleteApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestPkgSizeInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestDeleteAppDataOrCache(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestDeleteAllAppDataAndCache()V

    return-void
.end method

.method static synthetic access$1800(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestSystemMemoryInfo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestRunningAppProcessInfo()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestKillProcess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;II)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestDoSetting(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->onRequestGetSetting(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->sendClearAppDataBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;)Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mDM:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/common/api/ServiceClient;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mDMServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->notifyDMServieConnected(Z)V

    return-void
.end method

.method public static getInstance()Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->sInstance:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->sInstance:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .line 75
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->sInstance:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    return-object v0
.end method

.method private notifyDMServieConnected(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .prologue
    .line 455
    if-eqz p1, :cond_0

    const/16 v0, 0x14

    .line 458
    :goto_0
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(I)V

    .line 459
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 460
    return-void

    .line 455
    :cond_0
    const/16 v0, 0x15

    goto :goto_0
.end method

.method private onApkFileReceived(Ljava/io/File;)V
    .locals 5
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " received for installation. size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    new-instance v2, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageInstallObserver;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageInstallObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V

    .line 170
    const-string v3, ""

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v4, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mInstallAppLocations:Ljava/util/HashMap;

    .line 175
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    const/16 v0, 0xa

    .line 181
    :goto_0
    iget-object v4, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 182
    return-void

    .line 179
    :cond_0
    const/16 v0, 0x12

    goto :goto_0
.end method

.method private onRequestDeleteAllAppDataAndCache()V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 309
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 310
    const-string v4, "com.ingenic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    const-string v4, "com.ingenic.iwds.device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.ingenic.launcher"

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_1
    new-instance v2, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;

    invoke-direct {v2, p0, v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/util/List;)V

    .line 322
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 323
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 327
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 328
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    goto :goto_1

    .line 330
    :cond_2
    return-void
.end method

.method private onRequestDeleteApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " on request to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageDeleteObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageDeleteObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V

    .line 201
    const/4 v1, 0x2

    .line 202
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v0, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 203
    return-void
.end method

.method private onRequestDeleteAppDataOrCache(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v0, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->packageName:Ljava/lang/String;

    .line 252
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->type:I

    if-nez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " on request to clear user data of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;

    invoke-direct {v1, p0, v3}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V

    .line 256
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " on request to clear cache of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance v1, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearCacheObserver;

    invoke-direct {v1, p0, v3}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearCacheObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V

    .line 261
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0
.end method

.method private onRequestDoSetting(II)V
    .locals 2
    .param p1, "subType"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 430
    :goto_0
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;-><init>(III)V

    .line 432
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 433
    return-void

    .line 422
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 423
    :goto_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mDM:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->setWearOnRightHand(Z)V

    goto :goto_0

    .line 422
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onRequestGetAppList()V
    .locals 3

    .prologue
    .line 101
    const-string v0, " received request to get app list."

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2, v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 108
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;)V

    .line 110
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method private onRequestGetSetting(I)V
    .locals 3
    .param p1, "subType"    # I

    .prologue
    .line 436
    const/16 v0, -0x77

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 449
    :goto_0
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;-><init>(III)V

    .line 451
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 452
    return-void

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mDM:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->isWearOnRightHand()Z

    move-result v0

    .line 441
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onRequestGetStorageInfo()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 114
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    .line 118
    new-instance v0, Ljava/io/File;

    const-string v5, "/storage/sdcard1"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    .line 123
    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v8

    .line 128
    :goto_0
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;

    invoke-direct/range {v0 .. v9}, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;-><init>(JJZJJ)V

    .line 132
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V

    .line 133
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 134
    return-void

    :cond_0
    move-wide v6, v8

    goto :goto_0
.end method

.method private onRequestInstallApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V
    .locals 8
    .param p1, "request"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 139
    iget-wide v4, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->requiredSize:J

    .line 141
    const/4 v0, 0x1

    .line 142
    iget-object v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->apkFilePath:Ljava/lang/String;

    .line 144
    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 146
    const/4 v0, -0x4

    .line 149
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usableSpace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, requiredSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    const/16 v2, 0x2f

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-boolean v3, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->isInstalledInExternal:Z

    .line 156
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mInstallAppLocations:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;

    iget-object v3, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method private onRequestKillProcess(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " on request to kill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 416
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method private onRequestPkgSizeInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " on request to get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sizeInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageStatsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageStatsObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V

    .line 225
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 226
    return-void
.end method

.method private onRequestRunningAppProcessInfo()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 376
    new-instance v2, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    invoke-direct {v2}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;-><init>()V

    .line 377
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAM:Landroid/app/ActivityManager;

    .line 378
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 381
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 382
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 383
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 384
    const/4 v7, 0x1

    new-array v7, v7, [I

    aput v4, v7, v1

    .line 385
    iget-object v8, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v8, v7}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v7

    .line 386
    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v7

    .line 388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  pid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " memorySize is -->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "kB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v8, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;

    invoke-direct {v8, v6, v4, v5, v7}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;-><init>(Ljava/lang/String;III)V

    .line 393
    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->add(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;)V

    .line 395
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process id is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " packageName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in process id is -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;

    invoke-direct {v0, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V

    .line 405
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 406
    return-void
.end method

.method private onRequestSystemMemoryInfo()V
    .locals 6

    .prologue
    .line 368
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 370
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;-><init>(JJ)V

    .line 372
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method private sendClearAppDataBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 283
    const-string v0, "."

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 284
    const-string v0, "ingenic.intent.action.%s_DATA_CLEARED"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string v0, "initialize"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactorCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    sget-object v2, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppUuid:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 83
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mPM:Landroid/content/pm/PackageManager;

    .line 85
    const-string v0, "activity"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAM:Landroid/app/ActivityManager;

    .line 87
    new-instance v0, Lcom/ingenic/iwds/common/api/ServiceClient;

    const-string v1, "service_device_manager"

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mDMConnectionCallbacks:Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    invoke-direct {v0, p1, v1, v2}, Lcom/ingenic/iwds/common/api/ServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mDMServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mInstallAppLocations:Ljava/util/HashMap;

    .line 92
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "start"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->mAppTransactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 98
    return-void
.end method
