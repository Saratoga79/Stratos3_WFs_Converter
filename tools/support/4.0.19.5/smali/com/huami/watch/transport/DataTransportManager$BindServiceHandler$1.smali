.class Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler$1;
.super Ljava/lang/Object;
.source "DataTransportManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler$1;->this$1:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler$1;->this$1:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    iget-object v0, v0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {p2}, Lcom/huami/watch/transport/ITransportDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watch/transport/DataTransportManager;->access$202(Lcom/huami/watch/transport/DataTransportManager;Lcom/huami/watch/transport/ITransportDataService;)Lcom/huami/watch/transport/ITransportDataService;

    .line 195
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler$1;->this$1:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    invoke-virtual {v0, p2}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->notifyServiceConnected(Landroid/os/IBinder;)V

    .line 196
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler$1;->this$1:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->notifyServiceDisconnected()V

    .line 201
    return-void
.end method
