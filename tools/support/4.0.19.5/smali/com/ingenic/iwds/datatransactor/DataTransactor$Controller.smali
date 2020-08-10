.class Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;
.super Ljava/lang/Object;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controller"
.end annotation


# instance fields
.field private m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

.field private m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

.field private m_readyToSend:Z

.field private m_service:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

.field final synthetic this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 1

    .prologue
    .line 914
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_readyToSend:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .param p2, "x1"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$1;

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;
    .param p1, "x1"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->handleDeviceConnected(Lcom/ingenic/iwds/DeviceDescriptor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;
    .param p1, "x1"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->handleDeviceDisconnected(Lcom/ingenic/iwds/DeviceDescriptor;)V

    return-void
.end method

.method private handleDeviceConnected(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 3
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

    if-eqz v0, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->filerDeviceDescriptor(Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_0

    .line 988
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

    .line 993
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1400(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/DeviceDescriptor;Lcom/ingenic/iwds/uniconnect/Connection;)V

    goto :goto_0
.end method

.method private handleDeviceDisconnected(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 997
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/DeviceDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1500(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 964
    monitor-enter p0

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1300(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->cancelAll()V

    .line 966
    monitor-exit p0

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "index"    # I

    .prologue
    .line 948
    monitor-enter p0

    .line 949
    :try_start_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_readyToSend:Z

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V

    .line 954
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifySendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    .line 956
    monitor-exit p0

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1300(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->send(Ljava/io/File;I)V

    .line 960
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 932
    monitor-enter p0

    .line 933
    :try_start_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_readyToSend:Z

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V

    .line 938
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifySendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    .line 940
    monitor-exit p0

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1300(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->send(Ljava/lang/Object;)V

    .line 944
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReadyToSend(Z)V
    .locals 2
    .param p1, "isReady"    # Z

    .prologue
    .line 1010
    monitor-enter p0

    .line 1011
    if-eqz p1, :cond_0

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1600(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/uniconnect/Connection;)V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_readyToSend:Z

    .line 1027
    :goto_0
    monitor-exit p0

    .line 1028
    return-void

    .line 1020
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_readyToSend:Z

    .line 1025
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1700(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V

    goto :goto_0

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V
    .locals 1
    .param p1, "service"    # Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_service:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    .line 923
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_service:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->createConnection()Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    .line 924
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    .line 928
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->m_service:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    .line 929
    return-void
.end method
