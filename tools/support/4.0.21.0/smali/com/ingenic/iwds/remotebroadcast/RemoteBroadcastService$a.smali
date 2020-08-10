.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;
.super Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;
.source "RemoteBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$1;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)V

    return-void
.end method


# virtual methods
.method public registerRemoteBroadcastCallback(Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)I

    move-result v0

    return v0
.end method

.method public registerRemoteReceiver(IILandroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "requestPermission"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(IILandroid/content/IntentFilter;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public sendRemoteBroadcast(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "perm"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public unregisterRemoteBroadcastCallback(I)V
    .locals 1
    .param p1, "callerId"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(I)V

    .line 67
    return-void
.end method

.method public unregisterRemoteReceiver(II)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "receiverId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(II)V

    .line 53
    return-void
.end method
