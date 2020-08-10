.class Lcom/huami/watch/transport/TransporterClassic$5;
.super Ljava/lang/Object;
.source "TransporterClassic.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/TransporterClassic;->connectTransportService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/TransporterClassic;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/TransporterClassic;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnServiceConnected!!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {p2}, Lcom/huami/watch/transport/ITransportDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huami/watch/transport/TransporterClassic;->access$702(Lcom/huami/watch/transport/TransporterClassic;Lcom/huami/watch/transport/ITransportDataService;)Lcom/huami/watch/transport/ITransportDataService;

    .line 226
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1, v4}, Lcom/huami/watch/transport/TransporterClassic;->access$802(Lcom/huami/watch/transport/TransporterClassic;Z)Z

    .line 227
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huami/watch/transport/TransporterClassic;->access$902(Lcom/huami/watch/transport/TransporterClassic;Z)Z

    .line 230
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$1000(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;->onServiceConnected(Landroid/os/Bundle;)V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$1100(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportCallbackListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportDataService;->registersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V

    .line 234
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$1200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$1300(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportChannelListener;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/huami/watch/transport/ITransportDataService;->registerChannelListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V

    .line 235
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$1200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$1400(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataListener;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/huami/watch/transport/ITransportDataService;->registerDataListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 243
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnServiceDisconnected!!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$1100(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportCallbackListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportDataService;->unregistersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V

    .line 248
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$1200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportDataService;->unregisterChannelListener(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$1200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportDataService;->unregisterDataListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$1000(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;->onServiceDisconnected(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V

    .line 260
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1, v5}, Lcom/huami/watch/transport/TransporterClassic;->access$702(Lcom/huami/watch/transport/TransporterClassic;Lcom/huami/watch/transport/ITransportDataService;)Lcom/huami/watch/transport/ITransportDataService;

    .line 261
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1, v4}, Lcom/huami/watch/transport/TransporterClassic;->access$802(Lcom/huami/watch/transport/TransporterClassic;Z)Z

    .line 262
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1, v4}, Lcom/huami/watch/transport/TransporterClassic;->access$902(Lcom/huami/watch/transport/TransporterClassic;Z)Z

    .line 265
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Re-Connect To TransportService!!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-virtual {v1}, Lcom/huami/watch/transport/TransporterClassic;->connectTransportService()V

    .line 267
    return-void

    .line 251
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic$5;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v1}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnTransportServiceDisconnected : mTransportService is Null!!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
