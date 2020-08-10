.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;
.super Landroid/os/Handler;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "Implement me."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 511
    :goto_0
    return-void

    .line 444
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;

    .line 445
    invoke-virtual {v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->getList()Ljava/util/List;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onRemoteAppInfoListAvailable(Ljava/util/List;)V

    goto :goto_0

    .line 451
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;

    .line 452
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onRemoteStorageInfoAvailable(Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V

    goto :goto_0

    .line 457
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 458
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 459
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 460
    if-nez v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onDoneInstallApp(Ljava/lang/String;I)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onSendFileProgressForInstall(Ljava/lang/String;I)V

    goto :goto_0

    .line 471
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 472
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 473
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onDoneDeleteApp(Ljava/lang/String;I)V

    goto :goto_0

    .line 478
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageStats;

    .line 479
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TYPE_PKG_SIZE_INFO stats "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onResponsePkgSizeInfo(Landroid/content/pm/PackageStats;I)V

    goto :goto_0

    .line 487
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 488
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 489
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 490
    iget-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onResponseClearAppDataOrCache(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 496
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;

    .line 497
    iget v1, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->totalCount:I

    .line 498
    iget v2, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->index:I

    .line 499
    iget-object v3, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->packageName:Ljava/lang/String;

    .line 500
    iget v4, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->typeOfIndex:I

    .line 501
    iget v5, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->returnCode:I

    .line 503
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;->access$100(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;->onResponseClearAllAppDataAndCache(IILjava/lang/String;II)V

    goto/16 :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
