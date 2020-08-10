.class public Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;
    }
.end annotation


# instance fields
.field private mAppCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

.field private mProcessCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

.field private mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

.field private mSettingCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

.field private mStatusCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$1;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;
    .param p1, "x1"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    return-object p1
.end method


# virtual methods
.method public registerAppListener(Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    .prologue
    const/4 v1, 0x0

    .line 276
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Listener is null."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mAppCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    if-eqz v0, :cond_1

    .line 279
    const-string v0, "Unable to register listener: Do you forget to call unregisterAppListener?"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 276
    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mAppCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mAppCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-interface {v0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->registerAppListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerAppListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerProcessListener(Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

    .prologue
    const/4 v1, 0x0

    .line 318
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Listener is null."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mProcessCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "Unable to register listener: Do you forget to call unregisterProcessListener?"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 318
    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mProcessCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mProcessCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-interface {v0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->registerProcessListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerProcessListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 332
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerSettingListener(Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;

    .prologue
    const/4 v1, 0x0

    .line 361
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Listener is null."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mSettingCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    if-eqz v0, :cond_1

    .line 364
    const-string v0, "Unable to register listener: Do you forget to call unregisterSettingListener?"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 361
    goto :goto_0

    .line 368
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mSettingCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mSettingCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    invoke-interface {v0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->registerSettingListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerSettingListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 375
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerStatusListener(Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;

    .prologue
    const/4 v1, 0x0

    .line 235
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Listener is null."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mStatusCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "Unable to register listener: Do you forget to call unregisterStatusListener?"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mStatusCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    invoke-interface {v0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->registerStatusListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 249
    :goto_2
    return v1

    :cond_0
    move v0, v1

    .line 235
    goto :goto_0

    .line 241
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mStatusCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerStatusListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public requestClearAllAppDataAndCache()V
    .locals 3

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestClearAllAppDataAndCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestClearAllAppDataAndCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestClearAppDataOrCache(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestType"    # I

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestClearAppDataOrCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestDeleteApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestDeleteApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestDeleteApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestDoSetting(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestDoSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestGetAppList()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestGetAppList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestGetAppList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestGetSetting(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestGetSetting(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestGetSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestGetStorageInfo()V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestGetStorageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestGetStorageInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestInstallApp(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "isInstalledInExternal"    # Z

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestInstallApp(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestInstallApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestKillProcess(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestKillProcess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestKillProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestPkgSizeInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestPkgSizeInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestPkgSizeInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestRunningAppProcessInfo()V
    .locals 3

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestRunningAppProcessInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestRunningAppProcessInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestSystemMemoryInfo()V
    .locals 3

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mUuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->requestSystemMemoryInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestSystemMemoryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterAppListener()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mAppCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mAppCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->unregisterAppListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mAppCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in unregisterAppListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterProcessListener()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mProcessCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mProcessCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->unregisterProcessListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mProcessCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in unregisterProcessListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterSettingListener()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mSettingCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 388
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mSettingCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->unregisterSettingListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mSettingCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in unregisterSettingListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterStatusListener()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mStatusCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 261
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mService:Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mStatusCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->unregisterStatusListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->mStatusCallback:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in unregisterStatusListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
