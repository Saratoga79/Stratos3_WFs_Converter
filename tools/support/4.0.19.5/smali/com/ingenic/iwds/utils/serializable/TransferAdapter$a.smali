.class Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;
.super Landroid/os/FileObserver;
.source "TransferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/utils/serializable/TransferAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 426
    iput-object p2, p0, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;->a:Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;

    .line 427
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 445
    sparse-switch p1, :sswitch_data_0

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 447
    :sswitch_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :sswitch_1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V
    :try_end_0
    .catch Lcom/ingenic/iwds/common/exception/FileTransferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    iget-object v1, p0, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;->a:Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;->onFileTransferError(Lcom/ingenic/iwds/common/exception/FileTransferException;)V

    .line 459
    invoke-virtual {p0}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;->stopWatching()V

    goto :goto_0

    .line 445
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
    .end sparse-switch
.end method

.method public startWatching()V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V

    .line 433
    const-string v0, "TransferAdapter"

    const-string v1, "FileObserver: startWatching"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public stopWatching()V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 440
    const-string v0, "TransferAdapter"

    const-string v1, "FileObserver: stopWatching"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method
