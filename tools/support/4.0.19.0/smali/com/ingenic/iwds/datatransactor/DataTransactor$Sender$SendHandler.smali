.class public Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;
.super Landroid/os/Handler;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    .line 650
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 651
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 655
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 717
    :goto_0
    return-void

    .line 657
    :pswitch_0
    const/4 v3, 0x0

    .line 658
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$500(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$500(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;

    move-result-object v1

    iget-object v4, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-static {v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->access$600(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;->send(Lcom/ingenic/iwds/uniconnect/Connection;Ljava/lang/Object;)V

    .line 675
    :goto_1
    new-instance v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    iget-object v4, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v4, v4, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V
    :try_end_0
    .catch Lcom/ingenic/iwds/common/exception/SerializeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ingenic/iwds/common/exception/FileTransferException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v1

    .line 708
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifySendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    goto :goto_0

    .line 665
    :cond_1
    :try_start_1
    instance-of v1, v2, Ljava/io/File;

    if-eqz v1, :cond_2

    .line 666
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->access$600(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v4

    move-object v0, v2

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v6, v6, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 668
    invoke-static {v6}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$700(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

    move-result-object v6

    .line 666
    invoke-static {v4, v1, v5, v6}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->send(Lcom/ingenic/iwds/uniconnect/Connection;Ljava/io/File;ILcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)V
    :try_end_1
    .catch Lcom/ingenic/iwds/common/exception/SerializeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/ingenic/iwds/common/exception/FileTransferException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 678
    :catch_0
    move-exception v1

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serialize exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v7, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_2

    .line 670
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->access$600(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    iget-object v4, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v4, v4, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v4, v4, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_parcelableCreator:Landroid/os/Parcelable$Creator;

    iget-object v5, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v5, v5, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v5, v5, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_safeParcelableCreator:Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    invoke-static {v1, v2, v4, v5}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->send(Lcom/ingenic/iwds/uniconnect/Connection;Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)V
    :try_end_2
    .catch Lcom/ingenic/iwds/common/exception/SerializeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/ingenic/iwds/common/exception/FileTransferException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 682
    :catch_1
    move-exception v1

    .line 683
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 684
    instance-of v4, v1, Lcom/ingenic/iwds/common/exception/LinkDisconnectedException;

    if-nez v4, :cond_3

    instance-of v4, v1, Lcom/ingenic/iwds/common/exception/LinkUnbondedException;

    if-eqz v4, :cond_4

    .line 686
    :cond_3
    new-instance v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    iget-object v3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v3, v3, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V

    :goto_3
    move-object v3, v1

    .line 706
    goto :goto_2

    .line 690
    :cond_4
    instance-of v4, v1, Lcom/ingenic/iwds/common/exception/PortDisconnectedException;

    if-nez v4, :cond_5

    instance-of v4, v1, Lcom/ingenic/iwds/common/exception/PortClosedException;

    if-eqz v4, :cond_6

    .line 692
    :cond_5
    new-instance v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    iget-object v3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v3, v3, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {v1, v3, v2, v7}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V

    goto :goto_3

    .line 696
    :cond_6
    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_7

    .line 697
    new-instance v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    iget-object v3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v3, v3, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V

    goto :goto_3

    .line 700
    :catch_2
    move-exception v1

    .line 701
    invoke-virtual {v1}, Lcom/ingenic/iwds/common/exception/FileTransferException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 702
    instance-of v1, v1, Lcom/ingenic/iwds/common/exception/FileStatusException;

    if-eqz v1, :cond_0

    .line 703
    new-instance v3, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v2, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 713
    :pswitch_1
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->access$900(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    :cond_7
    move-object v1, v3

    goto :goto_3

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
