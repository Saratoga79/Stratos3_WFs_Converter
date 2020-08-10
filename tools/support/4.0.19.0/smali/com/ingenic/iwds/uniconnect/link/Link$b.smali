.class Lcom/ingenic/iwds/uniconnect/link/Link$b;
.super Landroid/os/Handler;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/link/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/uniconnect/link/Link;

.field private b:Ljava/io/DataInputStream;

.field private c:Ljava/io/DataOutputStream;

.field private d:[B


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/uniconnect/link/Link;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 345
    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->d:[B

    .line 349
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->b(Lcom/ingenic/iwds/uniconnect/link/Link;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnect from remote device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 362
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/DeviceDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0, v4}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;I)V

    .line 366
    invoke-static {}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->getInstance()Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 367
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->removeDeviceDescriptor(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "iwds.uniconnect.action.disconnected_address"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v1, "DeviceDescriptor"

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->d(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0, v3}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/DeviceDescriptor;

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->e(Lcom/ingenic/iwds/uniconnect/link/Link;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ingenic/iwds/uniconnect/Connection;->open(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 382
    if-ltz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->handshake()I

    move-result v0

    .line 386
    if-gez v0, :cond_1

    .line 387
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    .line 389
    const/16 v1, -0xb

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->g(Lcom/ingenic/iwds/uniconnect/link/Link;)V

    goto/16 :goto_0

    .line 395
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->b:Ljava/io/DataInputStream;

    .line 396
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->c:Ljava/io/DataOutputStream;

    .line 398
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 404
    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->c:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->d:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 405
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->c:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 407
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send local device descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 410
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/DeviceDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->c:Ljava/io/DataOutputStream;

    .line 414
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->b:Ljava/io/DataInputStream;

    .line 416
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    goto/16 :goto_0

    .line 423
    :pswitch_4
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 424
    new-array v0, v0, [B

    .line 426
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 427
    sget-object v1, Lcom/ingenic/iwds/DeviceDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    .line 429
    const-string v1, "02:00:00:00:00:00"

    iget-object v2, v0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->d(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->h(Lcom/ingenic/iwds/uniconnect/link/Link;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/DeviceDescriptor;

    .line 434
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 436
    :catch_1
    move-exception v0

    .line 437
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->c:Ljava/io/DataOutputStream;

    .line 438
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->b:Ljava/io/DataInputStream;

    .line 440
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    goto/16 :goto_0

    .line 446
    :pswitch_5
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect to remote device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 448
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/DeviceDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0, v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;I)V

    .line 452
    invoke-static {}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->getInstance()Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 453
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->addDeviceDescriptors(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "iwds.uniconnect.action.connected_address"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    const-string v1, "DeviceDescriptor"

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 458
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->d(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    :cond_3
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->c:Ljava/io/DataOutputStream;

    .line 462
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->b:Ljava/io/DataInputStream;

    .line 464
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$b;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    goto/16 :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
