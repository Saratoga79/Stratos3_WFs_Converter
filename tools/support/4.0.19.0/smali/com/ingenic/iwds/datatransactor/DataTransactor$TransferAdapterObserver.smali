.class Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;
.super Ljava/lang/Object;
.source "DataTransactor.java"

# interfaces
.implements Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .param p2, "x1"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$1;

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V

    return-void
.end method


# virtual methods
.method public onFileTransferError(Lcom/ingenic/iwds/common/exception/FileTransferException;)V
    .locals 1
    .param p1, "e"    # Lcom/ingenic/iwds/common/exception/FileTransferException;

    .prologue
    .line 1094
    const-string v0, "File transfer error!"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyDataArrived(Ljava/lang/Object;)V

    .line 1096
    return-void
.end method

.method public onRecvFileInterrupted(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File recv interrupted index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyFileTransactionInterrupted(IZ)V

    .line 1090
    return-void
.end method

.method public onRecvFileProgress(JJ)V
    .locals 3
    .param p1, "currentBytes"    # J
    .param p3, "totalBytes"    # J

    .prologue
    .line 1075
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File recv progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyFileTransactionProgress(IZ)V

    .line 1078
    return-void
.end method

.method public onSendFileInterrupted(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File send interrupted index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyFileTransactionInterrupted(IZ)V

    .line 1084
    return-void
.end method

.method public onSendFileProgress(JJ)V
    .locals 3
    .param p1, "currentBytes"    # J
    .param p3, "totalBytes"    # J

    .prologue
    .line 1068
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File send progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;->notifyFileTransactionProgress(IZ)V

    .line 1071
    return-void
.end method
