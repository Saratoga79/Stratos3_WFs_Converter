.class Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;
.super Landroid/os/Handler;
.source "RemoteSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final MSG_REQUEST_REGISTER_LISTENER:I = 0x5

.field private static final MSG_REQUEST_SENSOR_LIST:I = 0x4

.field private static final MSG_REQUEST_UNREGISTER_LISTENER:I = 0x6

.field private static final MSG_RESPONSE_SENSOR_ACCURACY_CHANGED:I = 0x3

.field private static final MSG_RESPONSE_SENSOR_CHANGED:I = 0x2

.field private static final MSG_RESPONSE_SENSOR_LIST:I = 0x0

.field private static final MSG_RESPONSE_SENSOR_SERVICE_CONNECTED:I = 0x1


# instance fields
.field private m_isRequestingSensorList:Z

.field private m_remoteServiceConnected:Z

.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService;Lcom/ingenic/iwds/smartsense/RemoteSensorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorService;
    .param p2, "x1"    # Lcom/ingenic/iwds/smartsense/RemoteSensorService$1;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 466
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    .line 467
    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$200(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->obtain(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    move-result-object v3

    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 562
    :goto_0
    return-void

    .line 471
    :pswitch_0
    iput-boolean v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->m_isRequestingSensorList:Z

    .line 473
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 474
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-static {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$300(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->onSensorAvailable(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 479
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 481
    :goto_1
    if-eqz v0, :cond_1

    .line 482
    const-string v0, "Sensor service on remote device connected"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iput-boolean v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->m_remoteServiceConnected:Z

    .line 484
    invoke-virtual {p0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->requestSensorList()V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 479
    goto :goto_1

    .line 487
    :cond_1
    const-string v0, "Sensor service on remote device disconnected"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iput-boolean v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->m_remoteServiceConnected:Z

    goto :goto_0

    .line 495
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorEvent;

    .line 497
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-static {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$300(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->onRemoteSensorEvent(Lcom/ingenic/iwds/smartsense/SensorEvent;)V

    goto :goto_0

    .line 502
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 503
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 505
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-static {v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$300(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->onRemoteSensorAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V

    goto :goto_0

    .line 510
    :pswitch_4
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->m_remoteServiceConnected:Z

    if-nez v0, :cond_2

    .line 511
    const-string v0, "Sensor service on remote device not connected yet"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->setSensorList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 516
    :cond_2
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->m_remoteServiceConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->m_isRequestingSensorList:Z

    if-eqz v0, :cond_3

    .line 517
    const-string v0, "Already requesting remote sensor list, waiting..."

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_3
    iput-boolean v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->m_isRequestingSensorList:Z

    .line 524
    const-string v0, "Try to request remote device sensor list"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    iput v2, v3, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->type:I

    .line 528
    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sendToRemote()V

    goto :goto_0

    .line 533
    :pswitch_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 534
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to request register remote senor listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/Sensor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-static {p0, v4}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iput v1, v3, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->type:I

    .line 541
    iput-object v0, v3, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 542
    iput v2, v3, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensorRate:I

    .line 544
    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sendToRemote()V

    goto/16 :goto_0

    .line 549
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to request unregister remote senor listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/Sensor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    const/4 v1, 0x2

    iput v1, v3, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->type:I

    .line 556
    iput-object v0, v3, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 558
    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sendToRemote()V

    goto/16 :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleResponse(Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    .prologue
    const/4 v2, 0x1

    .line 431
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 433
    iget v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    packed-switch v1, :pswitch_data_0

    .line 456
    const-string v0, "Unsupported remote response"

    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 435
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 436
    iget-object v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorList:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 460
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 440
    :pswitch_1
    iput v2, v0, Landroid/os/Message;->what:I

    .line 441
    iget v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->result:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 445
    :pswitch_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 446
    iget-object v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorEvent:Lcom/ingenic/iwds/smartsense/SensorEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 450
    :pswitch_3
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 451
    iget v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->accuracy:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 452
    iget-object v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public requestRegisterListener(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p2, "sensorRate"    # I

    .prologue
    .line 394
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 396
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 397
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 398
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 401
    return-void
.end method

.method public requestSensorList()V
    .locals 2

    .prologue
    .line 386
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 388
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 390
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void
.end method

.method public requestUnregisterListener(Lcom/ingenic/iwds/smartsense/Sensor;)V
    .locals 2
    .param p1, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;

    .prologue
    .line 404
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 406
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 407
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 410
    return-void
.end method

.method public setRemoteServiceState(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    const/4 v0, 0x1

    .line 413
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 415
    iput v0, v1, Landroid/os/Message;->what:I

    .line 416
    if-ne p1, v0, :cond_0

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 418
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 419
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSensorList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "sensorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ingenic/iwds/smartsense/Sensor;>;"
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 424
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 425
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 428
    return-void
.end method
