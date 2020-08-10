.class Lcom/ingenic/iwds/uniconnect/link/Link$a;
.super Landroid/os/Handler;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/link/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
    .line 486
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 483
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 484
    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->d:[B

    .line 488
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

    .line 492
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 494
    :pswitch_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->i(Lcom/ingenic/iwds/uniconnect/link/Link;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 499
    :pswitch_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnect from remote device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 501
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/DeviceDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0, v4}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;I)V

    .line 505
    invoke-static {}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->getInstance()Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 506
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->removeDeviceDescriptor(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "iwds.uniconnect.action.disconnected_address"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    const-string v1, "DeviceDescriptor"

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->d(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0, v3}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/DeviceDescriptor;

    goto :goto_0

    .line 520
    :pswitch_2
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->e(Lcom/ingenic/iwds/uniconnect/link/Link;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ingenic/iwds/uniconnect/Connection;->open(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 521
    if-ltz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->handshake()I

    move-result v0

    .line 525
    if-gez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    goto/16 :goto_0

    .line 531
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->b:Ljava/io/DataInputStream;

    .line 532
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->c:Ljava/io/DataOutputStream;

    .line 534
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 540
    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 541
    new-array v0, v0, [B

    .line 543
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 544
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    sget-object v2, Lcom/ingenic/iwds/DeviceDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2}, Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/DeviceDescriptor;

    .line 547
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->c:Ljava/io/DataOutputStream;

    .line 551
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->b:Ljava/io/DataInputStream;

    .line 553
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    goto/16 :goto_0

    .line 560
    :pswitch_4
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->c:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->d:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 561
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->c:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 563
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send local device descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 566
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/DeviceDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 568
    :catch_1
    move-exception v0

    .line 569
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->c:Ljava/io/DataOutputStream;

    .line 570
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->b:Ljava/io/DataInputStream;

    .line 572
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    goto/16 :goto_0

    .line 578
    :pswitch_5
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect to remote device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 580
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/DeviceDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0, v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Lcom/ingenic/iwds/uniconnect/link/Link;I)V

    .line 584
    invoke-static {}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->getInstance()Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 585
    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->addDeviceDescriptors(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "iwds.uniconnect.action.connected_address"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    const-string v1, "DeviceDescriptor"

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v2}, Lcom/ingenic/iwds/uniconnect/link/Link;->c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/Link;->d(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    :cond_2
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->c:Ljava/io/DataOutputStream;

    .line 594
    iput-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->b:Ljava/io/DataInputStream;

    .line 596
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link$a;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    goto/16 :goto_0

    .line 492
    nop

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
