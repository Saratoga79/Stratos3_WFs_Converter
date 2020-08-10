.class Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;
.super Ljava/lang/Thread;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadThread"
.end annotation


# instance fields
.field private m_isRunning:Z

.field private m_requestStop:Z

.field private m_runLock:Ljava/lang/Object;

.field final synthetic this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 746
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataTransactor_reader: UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$400(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 741
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_runLock:Ljava/lang/Object;

    .line 743
    iput-boolean v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_isRunning:Z

    .line 744
    iput-boolean v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_requestStop:Z

    .line 748
    return-void
.end method

.method private closeConnection()V
    .locals 1

    .prologue
    .line 787
    monitor-enter p0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1100(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->close()V

    .line 789
    monitor-exit p0

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openConnection()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 772
    monitor-enter p0

    .line 773
    :try_start_0
    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-static {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1100(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-static {v3}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1000(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v4, v4, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$400(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ingenic/iwds/uniconnect/Connection;->open(Lcom/ingenic/iwds/DeviceDescriptor;Ljava/lang/String;)I

    move-result v3

    .line 775
    const/4 v2, -0x3

    if-ne v3, v2, :cond_0

    move v2, v1

    :goto_0
    const-string v4, "Uuid was conflict."

    invoke-static {p0, v2, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 779
    if-gez v3, :cond_1

    .line 780
    monitor-exit p0

    .line 782
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 775
    goto :goto_0

    .line 782
    :cond_1
    monitor-exit p0

    move v0, v1

    goto :goto_1

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRunning(Z)V
    .locals 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 766
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_runLock:Ljava/lang/Object;

    monitor-enter v1

    .line 767
    :try_start_0
    iput-boolean p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_isRunning:Z

    .line 768
    monitor-exit v1

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 794
    invoke-direct {p0, v5}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->setRunning(Z)V

    .line 796
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v0, v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1000(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V

    .line 798
    const/4 v0, 0x0

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_runLock:Ljava/lang/Object;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-boolean v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_requestStop:Z

    if-eqz v2, :cond_2

    .line 803
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v0, v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .line 891
    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1000(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V

    .line 893
    invoke-direct {p0, v6}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->setRunning(Z)V

    .line 894
    return-void

    .line 808
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->openConnection()Z

    move-result v2

    .line 809
    if-nez v2, :cond_3

    .line 810
    monitor-exit v1

    goto :goto_0

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataTransactor_reader: UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v2, v2, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$400(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .line 817
    invoke-static {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1100(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ingenic/iwds/uniconnect/Connection;->getPort()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->setName(Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1100(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/Connection;->handshake()I

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->closeConnection()V

    goto :goto_0

    .line 831
    :cond_4
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1200(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->setReadyToSend(Z)V

    .line 832
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyConnectionConnected(Z)V

    .line 841
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$500(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 842
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$500(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-static {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1100(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;->recv(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/Object;

    move-result-object v1

    .line 851
    :goto_2
    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v2, v2, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyDataArrived(Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/ingenic/iwds/common/exception/SerializeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/ingenic/iwds/common/exception/FileTransferException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 853
    :catch_0
    move-exception v1

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serialize exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v5, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_1

    .line 845
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->access$1100(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v2, v2, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v2, v2, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_parcelableCreator:Landroid/os/Parcelable$Creator;

    iget-object v3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v3, v3, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v3, v3, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_safeParcelableCreator:Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    iget-object v4, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v4, v4, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 848
    invoke-static {v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$700(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

    move-result-object v4

    .line 845
    invoke-static {v1, v2, v3, v4}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->recv(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/ingenic/iwds/common/exception/SerializeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/ingenic/iwds/common/exception/FileTransferException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto :goto_2

    .line 857
    :catch_1
    move-exception v1

    .line 858
    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v2, v2, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyDataArrived(Ljava/lang/Object;)V

    .line 871
    :goto_3
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyConnectionConnected(Z)V

    .line 872
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->this$1:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    iget-object v1, v1, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1200(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->setReadyToSend(Z)V

    .line 877
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->closeConnection()V

    .line 882
    instance-of v1, v0, Lcom/ingenic/iwds/common/exception/LinkDisconnectedException;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/common/exception/LinkUnbondedException;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/common/exception/PortClosedException;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/os/RemoteException;

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 861
    :catch_2
    move-exception v0

    .line 862
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3
.end method

.method public start()V
    .locals 0

    .prologue
    .line 751
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 752
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 755
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_runLock:Ljava/lang/Object;

    monitor-enter v1

    .line 756
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_requestStop:Z

    .line 758
    iget-boolean v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->m_isRunning:Z

    if-nez v0, :cond_0

    .line 759
    monitor-exit v1

    .line 763
    :goto_0
    return-void

    .line 761
    :cond_0
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->closeConnection()V

    .line 762
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
