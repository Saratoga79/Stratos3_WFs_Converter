.class Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;
.super Landroid/os/Handler;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_CHANNLE_STATUS:I = 0x2

.field public static final MSG_NOTIFY_DATA_ARRIVED:I = 0x4

.field public static final MSG_NOTIFY_FILE_TRANSACTION_INTERRUPTED:I = 0x6

.field public static final MSG_NOTIFY_FILE_TRANSACTION_PROGRESS:I = 0x5

.field public static final MSG_NOTIFY_LINK_STATUS:I = 0x1

.field public static final MSG_NOTIFY_SEND_RESULT:I = 0x3


# instance fields
.field private i_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;

.field private m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

.field final synthetic this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 459
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->i_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;

    .line 461
    return-void
.end method

.method constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
    .param p3, "callback2"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 464
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    .line 465
    iput-object p3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->i_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;

    .line 466
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 470
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 511
    const-string v0, "Implement me."

    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    :goto_1
    invoke-interface {v3, v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;->onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 478
    :pswitch_1
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;->onChannelAvailable(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 483
    :pswitch_2
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;->onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    goto :goto_0

    .line 488
    :pswitch_3
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;->onDataArrived(Ljava/lang/Object;)V

    goto :goto_0

    .line 493
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    .line 494
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;->onSendFileProgress(I)V

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->m_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;->onRecvFileProgress(I)V

    goto :goto_0

    .line 501
    :pswitch_5
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->i_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;

    if-eqz v0, :cond_0

    .line 503
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    .line 504
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->i_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;->onSendFileInterrupted(I)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->i_callback:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;->onRecvFileInterrupted(I)V

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public notifyConnectionConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 529
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 531
    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    .line 532
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 534
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 535
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataArrived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 547
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 549
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 550
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 553
    return-void
.end method

.method public notifyFileTransactionInterrupted(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "isSend"    # Z

    .prologue
    .line 566
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 568
    const/4 v0, 0x6

    iput v0, v1, Landroid/os/Message;->what:I

    .line 569
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 570
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 572
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 573
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFileTransactionProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "isSend"    # Z

    .prologue
    .line 556
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 558
    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->what:I

    .line 559
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 560
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 562
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 563
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 2
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "connected"    # Z

    .prologue
    const/4 v0, 0x1

    .line 519
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 521
    iput v0, v1, Landroid/os/Message;->what:I

    .line 522
    if-eqz p2, :cond_0

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 523
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 525
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 526
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifySendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 2
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 538
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 540
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 541
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 543
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 544
    return-void
.end method
