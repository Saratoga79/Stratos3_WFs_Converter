.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;
.super Landroid/content/BroadcastReceiver;
.source "RemoteBroadcastProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;II)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 492
    iput p2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;->b:I

    .line 493
    iput p3, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;->c:I

    .line 494
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 498
    const-string v0, "is_remote_broadcast"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 499
    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;

    iget v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;->b:I

    iget v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;->c:I

    .line 502
    invoke-static {p2}, Lcom/ingenic/iwds/content/RemoteIntent;->fromIntent(Landroid/content/Intent;)Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;-><init>(IILcom/ingenic/iwds/content/RemoteIntent;)V

    .line 503
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    goto :goto_0
.end method
