.class public Lcom/ingenic/iwds/common/exception/IwdsException;
.super Ljava/lang/RuntimeException;
.source "IwdsException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public static throwFileTransferException(I)V
    .locals 4
    .param p0, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ingenic/iwds/common/exception/FileTransferException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/ingenic/iwds/common/exception/FileTransferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed on code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-static {p0}, Lcom/ingenic/iwds/datatransactor/FileTransferErrorCode;->errorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/common/exception/FileTransferException;-><init>(Ljava/lang/String;)V

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 156
    const-string v1, "IwdsException.throwFileTransferException"

    const/4 v2, 0x1

    const-string v3, "Implement me."

    invoke-static {v1, v2, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 161
    :goto_0
    throw v0

    .line 141
    :pswitch_0
    new-instance v1, Lcom/ingenic/iwds/common/exception/FileStatusException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/FileStatusException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/common/exception/FileTransferException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 146
    :pswitch_1
    new-instance v1, Lcom/ingenic/iwds/common/exception/SDCardNotMountedException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/SDCardNotMountedException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/common/exception/FileTransferException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 151
    :pswitch_2
    new-instance v1, Lcom/ingenic/iwds/common/exception/SDCardFullException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/SDCardFullException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/common/exception/FileTransferException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static throwUniconnectIOException(I)V
    .locals 4
    .param p0, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed on code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-static {p0}, Lcom/ingenic/iwds/uniconnect/UniconnectErrorCode;->errorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    packed-switch p0, :pswitch_data_0

    .line 118
    const-string v1, "IwdsException.throwIOException"

    const/4 v2, 0x1

    const-string v3, "Implement me."

    invoke-static {v1, v2, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 123
    :goto_0
    throw v0

    .line 88
    :pswitch_0
    new-instance v1, Lcom/ingenic/iwds/common/exception/LinkUnbondedException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/LinkUnbondedException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 93
    :pswitch_1
    new-instance v1, Lcom/ingenic/iwds/common/exception/LinkDisconnectedException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/LinkDisconnectedException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 98
    :pswitch_2
    new-instance v1, Lcom/ingenic/iwds/common/exception/PortBusyException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/PortBusyException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 103
    :pswitch_3
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 108
    :pswitch_4
    new-instance v1, Lcom/ingenic/iwds/common/exception/PortClosedException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/PortClosedException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 113
    :pswitch_5
    new-instance v1, Lcom/ingenic/iwds/common/exception/PortDisconnectedException;

    invoke-direct {v1}, Lcom/ingenic/iwds/common/exception/PortDisconnectedException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
