.class public Lcom/huami/watch/transport/DataTransportService;
.super Landroid/app/Service;
.source "DataTransportService.java"


# static fields
.field private static final ACTION_SERVICE_START:Ljava/lang/String; = "com.huami.watch.transport.DataTransportService.Start"

.field private static final TAG:Ljava/lang/String; = "Trans-Service"

.field private static final TRANSACTOR_UUID:Ljava/lang/String; = "5a177e43-82e6-d483-b7e3-d7072047e3cc"


# instance fields
.field private bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

.field private mBLETransforListener:Lcom/huami/watch/ble/listener/BLETransforListener;

.field private mChannelAvailable:Z

.field private final mChannelListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/ITransportChannelListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDataListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/ITransportDataListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDataSendResultCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/ITransportCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceBondType:I

.field private mDeviceBondTypeObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMcuBleDataListener:Lcom/huami/watch/ble/listener/MCUBLEAndroidDataListener;

.field private mTransactorCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

.field private mTransportBinder:Landroid/os/IBinder;

.field private mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    iput v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondType:I

    .line 67
    iput-boolean v0, p0, Lcom/huami/watch/transport/DataTransportService;->mChannelAvailable:Z

    .line 69
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDataListeners:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mChannelListeners:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDataSendResultCallbacks:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/huami/watch/transport/DataTransportService$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/DataTransportService$1;-><init>(Lcom/huami/watch/transport/DataTransportService;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mTransactorCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    .line 111
    new-instance v0, Lcom/huami/watch/transport/DataTransportService$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/DataTransportService$2;-><init>(Lcom/huami/watch/transport/DataTransportService;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mTransportBinder:Landroid/os/IBinder;

    .line 599
    new-instance v0, Lcom/huami/watch/transport/DataTransportService$6;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/DataTransportService$6;-><init>(Lcom/huami/watch/transport/DataTransportService;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mMcuBleDataListener:Lcom/huami/watch/ble/listener/MCUBLEAndroidDataListener;

    .line 650
    new-instance v0, Lcom/huami/watch/transport/DataTransportService$7;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/DataTransportService$7;-><init>(Lcom/huami/watch/transport/DataTransportService;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mBLETransforListener:Lcom/huami/watch/ble/listener/BLETransforListener;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/DataTransportService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportService;->onChannelAvailableInternal(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/DataTransportService;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;
    .param p1, "x1"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportService;->onSendResultInternal(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/huami/watch/transport/DataTransportService;)I
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;

    .prologue
    .line 53
    iget v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondType:I

    return v0
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/DataTransportService;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportService;->onDataArrivedInternal(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDataListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huami/watch/transport/DataTransportService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/huami/watch/transport/DataTransportService;->mChannelAvailable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mChannelListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDataSendResultCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huami/watch/transport/DataTransportService;Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;
    .param p1, "x1"    # Lcom/huami/watch/transport/DataTransportResult;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportService;->sendResultCallback(Lcom/huami/watch/transport/DataTransportResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/huami/watch/transport/DataTransportService;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->updateBondType()V

    return-void
.end method

.method private destroyBleDataTransfor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    const-string v0, "Trans-Service"

    const-string v1, "destroyDataTransfor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->stopBleDataTransfor()V

    .line 576
    iput-object v2, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    .line 577
    iput-object v2, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    .line 578
    return-void
.end method

.method private initBleDataTransfor(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 531
    const-string v1, "Trans-Service"

    const-string v2, "initBleDataTransfor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "huami.hardware.mcu.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 533
    .local v0, "useMcuBle":Z
    if-nez v0, :cond_1

    .line 534
    invoke-static {p1}, Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;->getInstance(Landroid/content/Context;)Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    .line 535
    iget v1, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 536
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->startBleDataTransfor()V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    const-string v1, "Trans-Service"

    const-string v2, "mcu ble mode,close classic BT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 545
    :cond_2
    invoke-static {p1}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->getInstance(Landroid/content/Context;)Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    .line 546
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->startBleDataTransfor()V

    goto :goto_0
.end method

.method private onBleStartCommand(Landroid/content/Intent;)V
    .locals 3
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .prologue
    .line 581
    if-eqz p1, :cond_0

    .line 582
    const-string v1, "action.huami.ble.set_status"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string v1, "key_ble_set_status"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 584
    .local v0, "targetStatus":I
    packed-switch v0, :pswitch_data_0

    .line 596
    .end local v0    # "targetStatus":I
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local v0    # "targetStatus":I
    :pswitch_0
    const-string v1, "Trans-Service"

    const-string v2, "onBleStartCommand startBleDataTransfor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->startBleDataTransfor()V

    goto :goto_0

    .line 590
    :pswitch_1
    const-string v1, "Trans-Service"

    const-string v2, "onBleStartCommand stopBleDataTransfor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->stopBleDataTransfor()V

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onChannelAvailableInternal(Z)V
    .locals 2
    .param p1, "isAvailable"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/huami/watch/transport/DataTransportService;->mChannelAvailable:Z

    .line 464
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$4;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$4;-><init>(Lcom/huami/watch/transport/DataTransportService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    return-void
.end method

.method private onDataArrivedInternal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$3;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$3;-><init>(Lcom/huami/watch/transport/DataTransportService;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method private onSendResultInternal(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 2
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$5;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$5;-><init>(Lcom/huami/watch/transport/DataTransportService;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method

.method private registerDeviceBondTypeObserver()V
    .locals 4

    .prologue
    .line 717
    new-instance v0, Lcom/huami/watch/transport/DataTransportService$8;

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/DataTransportService$8;-><init>(Lcom/huami/watch/transport/DataTransportService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondTypeObserver:Landroid/database/ContentObserver;

    .line 724
    invoke-virtual {p0}, Lcom/huami/watch/transport/DataTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.huami.watch.key.DEVICE_BOND_TYPE"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 726
    return-void
.end method

.method private sendDataInternalAndroid(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 7
    .param p1, "item"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    .line 361
    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "moduleName":Ljava/lang/String;
    const-string v4, "com.huami.watch.http-support.manager"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    const-string v4, "Trans-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter Module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v2    # "moduleName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v2    # "moduleName":Ljava/lang/String;
    :cond_1
    const-string v4, "transport_module_music_console"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    .line 369
    :try_start_1
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    if-eqz v4, :cond_2

    .line 370
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    invoke-virtual {v4, p1}, Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const-string v4, "Trans-Service"

    const-string v5, "SendDataException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "moduleName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 397
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    const-string v4, "Trans-Service"

    const-string v5, "SendDataException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "moduleName":Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    if-eqz v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    invoke-virtual {v4, p1}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 381
    :cond_3
    :try_start_4
    const-string v4, "com.huami.watch.settings"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.huami.watch.datasend_ios_findphone"

    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    invoke-static {}, Lcom/huami/watch/ble/McuBleGattManager;->getInstance()Lcom/huami/watch/ble/McuBleGattManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huami/watch/ble/McuBleGattManager;->mcuTryFindPhone()V

    goto :goto_0

    .line 387
    :cond_4
    invoke-static {p1}, Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v1

    .line 388
    .local v1, "itemData":[B
    const-string v4, "Trans-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send TransportDataItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/huami/watch/util/BytesUtil;->log([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {v1}, Lcom/huami/watch/util/ZipUtil;->gZip([B)[B

    move-result-object v1

    .line 391
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v1, v5, v6}, Lcom/huami/watch/util/BLEDataSplit;->sendData(I[BLandroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 393
    new-instance v3, Lcom/huami/watch/transport/DataTransportResult;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/huami/watch/transport/DataTransportResult;-><init>(Lcom/huami/watch/transport/TransportDataItem;I)V

    .line 395
    .local v3, "result":Lcom/huami/watch/transport/DataTransportResult;
    invoke-direct {p0, v3}, Lcom/huami/watch/transport/DataTransportService;->sendResultCallback(Lcom/huami/watch/transport/DataTransportResult;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method private sendResultCallback(Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 5
    .param p1, "transportResult"    # Lcom/huami/watch/transport/DataTransportResult;

    .prologue
    .line 511
    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService;->mDataSendResultCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 512
    .local v1, "callbacks":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportCallbackListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/ITransportCallbackListener;

    .line 515
    .local v0, "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huami/watch/transport/ITransportCallbackListener;->onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v2

    .line 517
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Trans-Service"

    const-string v4, "OnSendResultErr"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 523
    .end local v0    # "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private startBleDataTransfor()V
    .locals 2

    .prologue
    .line 551
    const-string v0, "Trans-Service"

    const-string v1, "startBleDataTransfor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    invoke-virtual {v0}, Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;->start()V

    .line 554
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->mBLETransforListener:Lcom/huami/watch/ble/listener/BLETransforListener;

    invoke-virtual {v0, v1}, Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;->setBLEListener(Lcom/huami/watch/ble/listener/BLETransforListener;)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    invoke-virtual {v0}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->start()V

    .line 557
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->mBLETransforListener:Lcom/huami/watch/ble/listener/BLETransforListener;

    invoke-virtual {v0, v1}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->setBLEListener(Lcom/huami/watch/ble/listener/BLETransforListener;)V

    .line 558
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->mMcuBleDataListener:Lcom/huami/watch/ble/listener/MCUBLEAndroidDataListener;

    invoke-virtual {v0, v1}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->registerMCUBleAndroidDataListener(Lcom/huami/watch/ble/listener/MCUBLEAndroidDataListener;)V

    goto :goto_0
.end method

.method private startForegroundWithNotification()V
    .locals 6

    .prologue
    .line 252
    const-string v0, "Huami Transport Service"

    .line 253
    .local v0, "label":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x108005a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 260
    .local v1, "noti":Landroid/app/Notification;
    const/16 v2, 0x22b8

    invoke-virtual {p0, v2, v1}, Lcom/huami/watch/transport/DataTransportService;->startForeground(ILandroid/app/Notification;)V

    .line 261
    return-void
.end method

.method private stopBleDataTransfor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    const-string v0, "Trans-Service"

    const-string v1, "stopBleDataTransfor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    invoke-virtual {v0}, Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;->stop()V

    .line 566
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    invoke-virtual {v0, v2}, Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;->setBLEListener(Lcom/huami/watch/ble/listener/BLETransforListener;)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    invoke-virtual {v0}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->stop()V

    .line 569
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    invoke-virtual {v0, v2}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->setBLEListener(Lcom/huami/watch/ble/listener/BLETransforListener;)V

    goto :goto_0
.end method

.method private unregisterDeviceBondTypeObserver()V
    .locals 2

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/huami/watch/transport/DataTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 730
    return-void
.end method

.method private updateBondType()V
    .locals 3

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/huami/watch/transport/DataTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.huami.watch.key.DEVICE_BOND_TYPE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondType:I

    .line 714
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mTransportBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 235
    const-string v0, "Trans-Service"

    const-string v1, "DataTransportService onCreate!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataTransportServiceHandlerThread_5a177e43-82e6-d483-b7e3-d7072047e3cc"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 238
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 239
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    .line 242
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->updateBondType()V

    .line 243
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->registerDeviceBondTypeObserver()V

    .line 247
    invoke-direct {p0, p0}, Lcom/huami/watch/transport/DataTransportService;->initBleDataTransfor(Landroid/content/Context;)V

    .line 248
    const-string v0, "00"

    invoke-virtual {p0}, Lcom/huami/watch/transport/DataTransportService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/huami/watch/wearubc/UbcInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    const-string v0, "Trans-Service"

    const-string v1, "DataTransportService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 288
    iput-object v2, p0, Lcom/huami/watch/transport/DataTransportService;->mHandler:Landroid/os/Handler;

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/DataTransportService;->stopForeground(Z)V

    .line 296
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->destroyBleDataTransfor()V

    .line 298
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->unregisterDeviceBondTypeObserver()V

    .line 300
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 301
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 265
    const-string v1, "Trans-Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataTransportService onStartCommand flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/huami/watch/transport/DataTransportService;->startForegroundWithNotification()V

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huami.watch.transport.DataTransportService.Start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "broad":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/DataTransportService;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportService;->onBleStartCommand(Landroid/content/Intent;)V

    .line 275
    const/4 v1, 0x1

    return v1
.end method

.method public sendDataInternal(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 7
    .param p1, "dataItem"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    .line 315
    const-string v5, "Trans-Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendData: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", DeviceBondType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mChannelAvailable="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/huami/watch/transport/DataTransportService;->mChannelAvailable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v4, "com.huami.assistant.exchange.Sync"

    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getData()Lcom/huami/watch/transport/DataBundle;

    move-result-object v2

    .line 320
    .local v2, "itemData":Lcom/huami/watch/transport/DataBundle;
    new-instance v0, Lcom/huami/assistant/dataexchange/Action;

    invoke-direct {v0, v2}, Lcom/huami/assistant/dataexchange/Action;-><init>(Lcom/huami/watch/transport/DataBundle;)V

    .line 321
    .local v0, "baseAction":Lcom/huami/assistant/dataexchange/Action;
    const-string v4, "Trans-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/huami/assistant/dataexchange/Action;->target:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v4, "com.huami.assistant.Alarm"

    iget-object v5, v0, Lcom/huami/assistant/dataexchange/Action;->target:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    const-string v4, "Trans-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send alarm data to mcu: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/huami/watch/ble/McuBleGattManager;->getInstance()Lcom/huami/watch/ble/McuBleGattManager;

    move-result-object v4

    invoke-static {v2}, Lcom/huami/watch/ble/model/McuAlarm;->fromDataBundle(Lcom/huami/watch/transport/DataBundle;)Lcom/huami/watch/ble/model/McuAlarm;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huami/watch/ble/McuBleGattManager;->updateAlarmInfo(Lcom/huami/watch/ble/model/McuAlarm;)V

    .line 355
    .end local v0    # "baseAction":Lcom/huami/assistant/dataexchange/Action;
    .end local v2    # "itemData":Lcom/huami/watch/transport/DataBundle;
    :cond_0
    :goto_1
    return-void

    .line 315
    :cond_1
    const-string v4, "null"

    goto/16 :goto_0

    .line 328
    :cond_2
    iget-boolean v4, p0, Lcom/huami/watch/transport/DataTransportService;->mChannelAvailable:Z

    if-nez v4, :cond_3

    .line 329
    const-string v4, "Trans-Service"

    const-string v5, "ignore send data because channel not ready"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v3, Lcom/huami/watch/transport/DataTransportResult;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/huami/watch/transport/DataTransportResult;-><init>(Lcom/huami/watch/transport/TransportDataItem;I)V

    .line 332
    .local v3, "result":Lcom/huami/watch/transport/DataTransportResult;
    invoke-direct {p0, v3}, Lcom/huami/watch/transport/DataTransportService;->sendResultCallback(Lcom/huami/watch/transport/DataTransportResult;)V

    goto :goto_1

    .line 335
    .end local v3    # "result":Lcom/huami/watch/transport/DataTransportResult;
    :cond_3
    iget v4, p0, Lcom/huami/watch/transport/DataTransportService;->mDeviceBondType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 352
    :pswitch_0
    const-string v4, "Trans-Service"

    const-string v5, "SendData Fail: No bond device!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportService;->sendDataInternalAndroid(Lcom/huami/watch/transport/TransportDataItem;)V

    goto :goto_1

    .line 341
    :pswitch_2
    :try_start_0
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    if-eqz v4, :cond_4

    .line 342
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->bleDataTransfor:Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;

    invoke-virtual {v4, p1}, Lcom/huami/watch/ble/trasnfer/BLEDataTransfor;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    const-string v4, "Trans-Service"

    const-string v5, "SendDataException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 343
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    if-eqz v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportService;->mcubleDataTransfor:Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    invoke-virtual {v4, p1}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
