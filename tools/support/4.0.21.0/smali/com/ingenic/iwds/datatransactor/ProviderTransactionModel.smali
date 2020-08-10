.class public Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;
.super Ljava/lang/Object;
.source "ProviderTransactionModel.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$RequestFailed;,
        Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$Request;,
        Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;"
    }
.end annotation


# instance fields
.field private m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;",
            "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p3, "callback":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Callback is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 60
    iput-object p3, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;

    .line 61
    new-instance v0, Lcom/ingenic/iwds/datatransactor/ParcelTransactor;

    invoke-direct {v0, p1, p2, p0, p4}, Lcom/ingenic/iwds/datatransactor/ParcelTransactor;-><init>(Landroid/content/Context;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 62
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    return v0
.end method

.method public notifyRequestFailed()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$RequestFailed;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$RequestFailed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onChannelAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 218
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;->onChannelAvailable(Z)V

    .line 219
    return-void
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 236
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$Request;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;->onRequest()V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$RequestFailed;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;->onRequestFailed()V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;->onObjectArrived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 1
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 209
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;

    invoke-interface {v0, p1, p2}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;->onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V

    .line 210
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 260
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 251
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 1
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 227
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;->onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    .line 228
    return-void
.end method

.method public request()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$Request;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$Request;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;, "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 97
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 119
    return-void
.end method
