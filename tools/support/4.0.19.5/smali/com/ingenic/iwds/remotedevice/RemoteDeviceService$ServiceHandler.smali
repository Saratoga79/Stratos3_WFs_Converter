.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;
.super Landroid/os/Handler;
.source "RemoteDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;
    }
.end annotation


# static fields
.field private static final MSG_REGISTER_APP_LISTENER:I = 0x2

.field private static final MSG_REGISTER_PROCESS_LISTENER:I = 0x3

.field private static final MSG_REGISTER_SETTING_LISTENER:I = 0x4

.field private static final MSG_REGISTER_STATUS_LISTENER:I = 0x1

.field private static final MSG_REMOTE_DEVICE_STATUS_CHANGED:I = 0x0

.field private static final MSG_REQUEST_APPLIST:I = 0x14

.field private static final MSG_REQUEST_CLEAR_ALL_APP_DATA_AND_CACHE:I = 0x1d

.field private static final MSG_REQUEST_CLEAR_APP_DATA_OR_CACHE:I = 0x18

.field private static final MSG_REQUEST_DELETE_APP:I = 0x16

.field private static final MSG_REQUEST_DO_SETTING:I = 0x1e

.field private static final MSG_REQUEST_GET_SETTING:I = 0x1f

.field private static final MSG_REQUEST_INSTALL_APP:I = 0x15

.field private static final MSG_REQUEST_KILL_PROCESS:I = 0x1a

.field private static final MSG_REQUEST_PKG_SIZEINFO:I = 0x17

.field private static final MSG_REQUEST_RUNNING_PROCESS_INFO:I = 0x1b

.field private static final MSG_REQUEST_STORAGE_INFO:I = 0x1c

.field private static final MSG_REQUEST_SYS_MEM_INFO:I = 0x19

.field private static final MSG_RESPONSE_APPLIST:I = 0x28

.field private static final MSG_RESPONSE_CLEAR_ALL_APP_DATA_AND_CACHE:I = 0x31

.field private static final MSG_RESPONSE_CLEAR_APP_DATA_OR_CACHE:I = 0x2d

.field private static final MSG_RESPONSE_CONFIRM_INSTALL_APP:I = 0x29

.field private static final MSG_RESPONSE_DELETE_APP:I = 0x2b

.field private static final MSG_RESPONSE_DM_SERVICE_CONNECTED:I = 0x33

.field private static final MSG_RESPONSE_DM_SERVICE_DISCONNECTED:I = 0x34

.field private static final MSG_RESPONSE_DONE_INSTALL_APP:I = 0x2a

.field private static final MSG_RESPONSE_DONE_SETTING:I = 0x35

.field private static final MSG_RESPONSE_GET_SETTING:I = 0x36

.field private static final MSG_RESPONSE_KILL_PROCESS:I = 0x32

.field private static final MSG_RESPONSE_PKG_SIZEINFO:I = 0x2c

.field private static final MSG_RESPONSE_RUNNING_PROCESS_INFO:I = 0x2f

.field private static final MSG_RESPONSE_STORAGE_INFO:I = 0x30

.field private static final MSG_RESPONSE_SYS_MEM_INFO:I = 0x2e

.field private static final MSG_SEND_FILE_PROGRESS_FOR_INSTALL:I = 0x3c

.field private static final MSG_UNREGISTER_APP_LISTENER:I = 0xb

.field private static final MSG_UNREGISTER_PROCESS_LISTENER:I = 0xc

.field private static final MSG_UNREGISTER_SETTING_LISTENER:I = 0xd

.field private static final MSG_UNREGISTER_STATUS_LISTENER:I = 0xa


# instance fields
.field private mIsRemoteDeviceReady:Z

.field private mIsRemoteServiceConnected:Z

.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 446
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .line 447
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteDeviceReady:Z

    .line 444
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteServiceConnected:Z

    .line 448
    return-void
.end method

.method private callbackAppListReceived(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "appList"    # Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 970
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 971
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .line 977
    invoke-interface {v0, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onRemoteAppInfoListAvailable(Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 985
    return-void

    .line 978
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackClearAllAppDataAndCache(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;

    .prologue
    .line 1196
    iget v1, p2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->totalCount:I

    .line 1197
    iget v2, p2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->index:I

    .line 1198
    iget-object v3, p2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->packageName:Ljava/lang/String;

    .line 1199
    iget v4, p2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->typeOfIndex:I

    .line 1200
    iget v5, p2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->returnCode:I

    .line 1202
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 1203
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    .line 1204
    iget-object v7, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v7}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v6}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    .line 1210
    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .line 1211
    invoke-interface/range {v0 .. v5}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onResponseClearAllAppDataAndCache(IILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1220
    return-void

    .line 1213
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackDoneDeleteApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "returnCode"    # I

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1092
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1093
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    invoke-interface {v0, p2, p3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onDoneDeleteApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1107
    return-void

    .line 1100
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackDoneInstallApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "returnCode"    # I

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1058
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1059
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    invoke-interface {v0, p2, p3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onDoneInstallApp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1073
    return-void

    .line 1066
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackDoneKillProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1293
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1294
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1299
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    invoke-interface {v0, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;->onDoneKillProcess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1308
    return-void

    .line 1301
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackDoneSetting(Ljava/lang/String;II)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "subType"    # I
    .param p3, "returnCode"    # I

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1348
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1349
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    invoke-interface {v0, p2, p3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;->onDoneSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1363
    return-void

    .line 1356
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackGetSetting(Ljava/lang/String;II)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "subType"    # I
    .param p3, "returnCode"    # I

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1320
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1321
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    invoke-interface {v0, p2, p3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;->onGetSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1335
    return-void

    .line 1328
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackResponseClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "requestType"    # I
    .param p4, "returnCode"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1162
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1163
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .line 1169
    invoke-interface {v0, p2, p3, p4}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onResponseClearAppDataOrCache(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1178
    return-void

    .line 1171
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackResponsePkgSizeInfo(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemotePackageStats;I)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "stats"    # Lcom/ingenic/iwds/remotedevice/RemotePackageStats;
    .param p3, "returnCode"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1126
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1127
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1132
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " callbackResponsePkgSizeInfo stats "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " N "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    invoke-interface {v0, p2, p3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onResponsePkgSizeInfo(Lcom/ingenic/iwds/remotedevice/RemotePackageStats;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1143
    return-void

    .line 1136
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackResponseRunningProcesses(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "infoList"    # Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1266
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1267
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    .line 1273
    invoke-interface {v0, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;->onResponseRunningAppProcessInfo(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1281
    return-void

    .line 1274
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackResponseSysMemInfo(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "availSize"    # J
    .param p4, "totalSize"    # J

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1237
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1238
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    .line 1244
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;->onResponseSystemMemoryInfo(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1252
    return-void

    .line 1245
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callbackStorageInfoReceived(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "storageInfo"    # Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;

    .prologue
    .line 998
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 999
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1000
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .line 1006
    invoke-interface {v0, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onRemoteStorageInfoAvailable(Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1014
    return-void

    .line 1007
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private doOnAppListReceived(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-object v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;->appList:Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;

    .line 992
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 993
    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackAppListReceived(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;)V

    goto :goto_0
.end method

.method private doOnConfirmInstallApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;

    .prologue
    const/4 v0, 0x1

    .line 1026
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;->returnCode:I

    .line 1030
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;->apkFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installation confirm, returnCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    iget-object v4, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v4}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 1036
    if-eq v1, v0, :cond_2

    .line 1037
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    .line 1039
    if-nez v0, :cond_1

    if-nez v4, :cond_4

    .line 1041
    :cond_1
    if-eqz v0, :cond_3

    move v0, v1

    .line 1046
    :goto_2
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    const/4 v2, 0x5

    invoke-direct {v1, v3, v2, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 1048
    invoke-direct {p0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnDoneInstallApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V

    goto :goto_0

    .line 1036
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1044
    :cond_3
    const/4 v0, -0x3

    goto :goto_2

    .line 1052
    :cond_4
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/io/File;)V

    goto :goto_0
.end method

.method private doOnDoneDeleteApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V
    .locals 5
    .param p1, "done"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->returnCode:I

    .line 1114
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deletion done, return code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    invoke-direct {p0, v0, v2, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneDeleteApp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private doOnDoneInstallApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V
    .locals 5
    .param p1, "done"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->returnCode:I

    .line 1080
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " installation done, return code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0, v0, v2, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneInstallApp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private doOnDoneSetting(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1370
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;->subType:I

    iget v2, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;->returnCode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneSetting(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private doOnGetSetting(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1342
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;->subType:I

    iget v2, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;->returnCode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackGetSetting(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private doOnKillProcess(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V
    .locals 2
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1800(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    :goto_0
    return-void

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1800(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1315
    iget-object v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneKillProcess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doOnRemoteDeviceStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "isReady"    # Z

    .prologue
    .line 844
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 845
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 846
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    invoke-interface {v0, p2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;->onRemoteDeviceReady(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 859
    return-void

    .line 852
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private doOnRemoteDeviceStatusChanged(Z)V
    .locals 3
    .param p1, "isReady"    # Z

    .prologue
    .line 862
    if-nez p1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 866
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;->onRemoteDeviceReady(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 876
    return-void

    .line 870
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private doOnResponseClearAllAppDataAndCache(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    :goto_0
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1228
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->index:I

    iget v2, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->totalCount:I

    if-ne v1, v2, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1231
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackClearAllAppDataAndCache(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;)V

    goto :goto_0
.end method

.method private doOnResponseClearAppDataOrCache(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V
    .locals 4
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .prologue
    .line 1181
    iget-object v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->packageName:Ljava/lang/String;

    .line 1182
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1184
    if-nez v0, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1187
    :cond_0
    iget v2, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->type:I

    .line 1188
    iget v3, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->returnCode:I

    .line 1190
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackResponseClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private doOnResponsePkgSizeInfo(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;

    .prologue
    .line 1146
    iget-object v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->pkgStats:Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    .line 1147
    iget-object v0, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->pkgStats:Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " doOnResponsePkgSizeInfo packageName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1151
    if-nez v0, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget v2, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->returnCode:I

    .line 1156
    invoke-direct {p0, v0, v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackResponsePkgSizeInfo(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemotePackageStats;I)V

    goto :goto_0
.end method

.method private doOnResponseRunningProcesses(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1288
    iget-object v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;->processList:Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackResponseRunningProcesses(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V

    goto :goto_0
.end method

.method private doOnResponseSysMemInfo(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1600(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1600(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1259
    iget-wide v2, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->availSysMemSize:J

    iget-wide v4, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->totalSysMemSize:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackResponseSysMemInfo(Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method private doOnSendFileProgressForInstall(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 822
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 824
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 825
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 826
    iget-object v4, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v4}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 831
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 832
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .line 833
    invoke-interface {v0, v2, p1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;->onSendFileProgressForInstall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private doOnStorageInfoReceived(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;->storageInfo:Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;

    .line 1021
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1022
    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackStorageInfoReceived(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V

    goto :goto_0
.end method

.method private doRequestClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "requestType"    # I

    .prologue
    .line 953
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .line 954
    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 955
    :cond_0
    const/16 v0, -0xc8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackResponseClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;II)V

    .line 965
    :goto_0
    return-void

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    invoke-direct {v0, p2, p3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(Ljava/lang/String;I)V

    .line 964
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doRequestDeleteApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const/16 v0, -0xc8

    invoke-direct {p0, p1, p2, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneDeleteApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 934
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/4 v1, 0x7

    invoke-direct {v0, p2, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(Ljava/lang/String;I)V

    .line 933
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doRequestInstallApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "isInstalledInExternal"    # Z

    .prologue
    .line 881
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    .line 882
    if-nez v0, :cond_0

    .line 883
    const/4 v0, -0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneInstallApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 918
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-virtual {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 890
    if-nez v0, :cond_1

    .line 891
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneInstallApp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 896
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " request to install app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uuid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 905
    const/16 v0, -0xc8

    invoke-direct {p0, p1, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneInstallApp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 914
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/4 v2, 0x5

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(Ljava/lang/String;ILjava/lang/String;JZ)V

    .line 917
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doRequestPkgSizeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 937
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;-><init>(Ljava/lang/String;)V

    const/16 v1, -0xc8

    invoke-direct {p0, p1, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackResponsePkgSizeInfo(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemotePackageStats;I)V

    .line 949
    :goto_0
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/16 v1, 0x8

    invoke-direct {v0, p2, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(Ljava/lang/String;I)V

    .line 948
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method handleAppResponse(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;

    .prologue
    .line 1548
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1549
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1551
    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->type:I

    packed-switch v1, :pswitch_data_0

    .line 1617
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1618
    return-void

    .line 1553
    :pswitch_1
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1557
    :pswitch_2
    const/16 v1, 0x30

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1561
    :pswitch_3
    const/16 v1, 0x29

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1565
    :pswitch_4
    const/16 v1, 0x2a

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1569
    :pswitch_5
    const/16 v1, 0x2b

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1573
    :pswitch_6
    const/16 v1, 0x2c

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1578
    :pswitch_7
    const/16 v1, 0x2d

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1582
    :pswitch_8
    const/16 v1, 0x31

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1586
    :pswitch_9
    const/16 v1, 0x2e

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1590
    :pswitch_a
    const/16 v1, 0x2f

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1594
    :pswitch_b
    const/16 v1, 0x32

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1598
    :pswitch_c
    const/16 v1, 0x33

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1602
    :pswitch_d
    const/16 v1, 0x34

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1606
    :pswitch_e
    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1610
    :pswitch_f
    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, -0xc9

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 815
    :goto_0
    :pswitch_0
    return-void

    .line 455
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    .line 456
    :goto_1
    if-nez v0, :cond_0

    .line 457
    iput-boolean v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteServiceConnected:Z

    .line 459
    :cond_0
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnRemoteDeviceStatusChanged(Z)V

    .line 460
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteDeviceReady:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 455
    goto :goto_1

    .line 464
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    .line 465
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->uuid:Ljava/lang/String;

    .line 466
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    .line 468
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    monitor-enter v2

    .line 469
    :try_start_0
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 470
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->addListener(ILjava/lang/String;Landroid/os/IInterface;)V

    .line 472
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 473
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteDeviceReady:Z

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnRemoteDeviceStatusChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 483
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    .line 485
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 486
    :try_start_2
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 487
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->removeListener(ILandroid/os/IInterface;)Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 490
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 495
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    .line 496
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->uuid:Ljava/lang/String;

    .line 497
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .line 499
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    monitor-enter v2

    .line 500
    :try_start_3
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->addListener(ILjava/lang/String;Landroid/os/IInterface;)V

    .line 504
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 510
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .line 513
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 514
    :try_start_4
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 515
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->removeListener(ILandroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 517
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 518
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 520
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$600(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 525
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    .line 526
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->uuid:Ljava/lang/String;

    .line 527
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    .line 529
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    monitor-enter v2

    .line 530
    :try_start_6
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->addListener(ILjava/lang/String;Landroid/os/IInterface;)V

    .line 534
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 535
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 540
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    .line 543
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 544
    :try_start_7
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 545
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->removeListener(ILandroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 548
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 550
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$800(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :catchall_5
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 555
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    .line 556
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->uuid:Ljava/lang/String;

    .line 557
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    .line 559
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    monitor-enter v2

    .line 560
    :try_start_9
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register sensor listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->addListener(ILjava/lang/String;Landroid/os/IInterface;)V

    .line 564
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 565
    monitor-exit v2

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    .line 570
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    .line 573
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 574
    :try_start_a
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 575
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->removeListener(ILandroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 578
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 580
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    :catchall_7
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    .line 586
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 587
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 588
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    invoke-direct {v1, v4}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 594
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 602
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    .line 603
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->uuid:Ljava/lang/String;

    .line 604
    iget-object v2, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->apkFilePath:Ljava/lang/String;

    .line 605
    iget-boolean v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->isInstalledInExternal:Z

    .line 607
    invoke-direct {p0, v1, v2, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doRequestInstallApp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 612
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    .line 613
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->uuid:Ljava/lang/String;

    .line 614
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->packageName:Ljava/lang/String;

    .line 616
    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doRequestDeleteApp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    .line 622
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->uuid:Ljava/lang/String;

    .line 623
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->packageName:Ljava/lang/String;

    .line 625
    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doRequestPkgSizeInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    .line 631
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->uuid:Ljava/lang/String;

    .line 632
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->packageName:Ljava/lang/String;

    .line 633
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 635
    invoke-direct {p0, v1, v0, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doRequestClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 640
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 642
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    .line 643
    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1500(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 644
    :cond_2
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;

    const/16 v2, -0xc8

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackClearAllAppDataAndCache(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;)V

    goto/16 :goto_0

    .line 651
    :cond_3
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    invoke-direct {v1, v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 658
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 659
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1600(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 660
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 666
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 667
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1700(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 674
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    .line 675
    iget-object v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->uuid:Ljava/lang/String;

    .line 676
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1800(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 678
    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->packageName:Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    new-instance v2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 685
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 686
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 687
    iget-boolean v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteServiceConnected:Z

    if-nez v2, :cond_4

    .line 688
    invoke-direct {p0, v0, v1, v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackGetSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 695
    :cond_4
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1900(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    new-instance v2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 703
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 704
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 705
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 706
    iget-boolean v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteServiceConnected:Z

    if-nez v3, :cond_5

    .line 707
    invoke-direct {p0, v0, v1, v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->callbackDoneSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 713
    :cond_5
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$2000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 715
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    const/16 v3, 0xc

    invoke-direct {v0, v3, v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(III)V

    .line 717
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$1200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 722
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;

    .line 723
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnAppListReceived(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;)V

    goto/16 :goto_0

    .line 728
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;

    .line 729
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnStorageInfoReceived(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;)V

    goto/16 :goto_0

    .line 734
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;

    .line 735
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnConfirmInstallApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;)V

    goto/16 :goto_0

    .line 740
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .line 741
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnDoneInstallApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V

    goto/16 :goto_0

    .line 746
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .line 747
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnDoneDeleteApp(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V

    goto/16 :goto_0

    .line 752
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;

    .line 753
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnResponsePkgSizeInfo(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;)V

    goto/16 :goto_0

    .line 758
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .line 759
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnResponseClearAppDataOrCache(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V

    goto/16 :goto_0

    .line 764
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;

    .line 765
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnResponseClearAllAppDataAndCache(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;)V

    goto/16 :goto_0

    .line 770
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;

    .line 771
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnResponseSysMemInfo(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;)V

    goto/16 :goto_0

    .line 776
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;

    .line 777
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnResponseRunningProcesses(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;)V

    goto/16 :goto_0

    .line 782
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    .line 783
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnKillProcess(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;)V

    goto/16 :goto_0

    .line 788
    :pswitch_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 789
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnSendFileProgressForInstall(I)V

    goto/16 :goto_0

    .line 793
    :pswitch_22
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteServiceConnected:Z

    goto/16 :goto_0

    .line 797
    :pswitch_23
    iput-boolean v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->mIsRemoteServiceConnected:Z

    goto/16 :goto_0

    .line 801
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;

    .line 802
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnGetSetting(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;)V

    goto/16 :goto_0

    .line 807
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;

    .line 808
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->doOnDoneSetting(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;)V

    goto/16 :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
        :pswitch_17
        :pswitch_1d
        :pswitch_20
        :pswitch_22
        :pswitch_23
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
    .end packed-switch
.end method

.method onRemoteDeviceStatusChanged(Z)V
    .locals 2
    .param p1, "isReady"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1534
    .line 1535
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1536
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1537
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1538
    return-void
.end method

.method onSendFileProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1541
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1543
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1544
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1545
    return-void
.end method

.method registerAppListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .prologue
    .line 1389
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1391
    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1394
    return-void
.end method

.method registerProcessListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    .prologue
    .line 1404
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1406
    const/4 v1, 0x3

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1408
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1409
    return-void
.end method

.method registerSettingListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    .prologue
    .line 1419
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1421
    const/4 v1, 0x4

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1424
    return-void
.end method

.method registerStatusListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    .prologue
    .line 1375
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1377
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1379
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1380
    return-void
.end method

.method requestClearAllAppDataAndCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1502
    const/16 v0, 0x1d

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1503
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1504
    return-void
.end method

.method requestClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "requestType"    # I

    .prologue
    .line 1494
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const/16 v1, 0x18

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1497
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1498
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1499
    return-void
.end method

.method requestDeleteApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1480
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const/16 v1, 0x16

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1483
    return-void
.end method

.method requestDoSetting(Ljava/lang/String;II)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # I

    .prologue
    .line 1529
    const/16 v0, 0x1e

    invoke-static {p0, v0, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1531
    return-void
.end method

.method requestGetAppList(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1443
    const/16 v0, 0x14

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1444
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1445
    return-void
.end method

.method requestGetSetting(Ljava/lang/String;I)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1523
    const/16 v0, 0x1f

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1524
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1525
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1526
    return-void
.end method

.method requestGetStorageInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1448
    const/16 v0, 0x1c

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1449
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1450
    return-void
.end method

.method requestInstallApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "isInstalledInExternal"    # Z

    .prologue
    .line 1454
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1456
    const/16 v1, 0x15

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1458
    return-void
.end method

.method requestKillProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1507
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const/16 v1, 0x1a

    .line 1509
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1510
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1511
    return-void
.end method

.method requestPkgSizeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1486
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const/16 v1, 0x17

    .line 1488
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1489
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1490
    return-void
.end method

.method requestRunningAppProcessInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1514
    const/16 v0, 0x1b

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1515
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1516
    return-void
.end method

.method requestSystemMemoryInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1519
    const/16 v0, 0x19

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1520
    return-void
.end method

.method unregisterAppListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    .prologue
    .line 1397
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1399
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1400
    return-void
.end method

.method unregisterProcessListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    .prologue
    .line 1412
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1415
    return-void
.end method

.method unregisterSettingListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    .prologue
    .line 1427
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1430
    return-void
.end method

.method unregisterStatusListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    .prologue
    .line 1383
    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1385
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1386
    return-void
.end method
