.class Lcom/ingenic/iwds/slpt/SlptClockClient$1;
.super Ljava/lang/Object;
.source "SlptClockClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/SlptClockClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string v1, "onServiceConnected ---------------!"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$000(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;)V

    .line 43
    const-string v0, "SLPT-clockClient"

    const-string v1, " onServiceConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-static {p2}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/slpt/ISlptClockService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$202(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/ISlptClockService;)Lcom/ingenic/iwds/slpt/ISlptClockService;

    .line 45
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->connectionIsAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string v1, "connection to service is down"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$400(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$500(Lcom/ingenic/iwds/slpt/SlptClockClient;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string v1, "callback already register"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$400(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$300(Lcom/ingenic/iwds/slpt/SlptClockClient;)Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$300(Lcom/ingenic/iwds/slpt/SlptClockClient;)Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;->onServiceConnected()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string v1, "onServiceDisconnected ---------------!"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$000(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$102(Lcom/ingenic/iwds/slpt/SlptClockClient;Z)Z

    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$202(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/ISlptClockService;)Lcom/ingenic/iwds/slpt/ISlptClockService;

    .line 36
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$300(Lcom/ingenic/iwds/slpt/SlptClockClient;)Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->access$300(Lcom/ingenic/iwds/slpt/SlptClockClient;)Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;->onServiceDisconnected()V

    .line 38
    :cond_0
    return-void
.end method
