.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$1;
.super Landroid/content/BroadcastReceiver;
.source "WearHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$1;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    const-string v0, "com.huami.watch.httpsupport.EXCHANGEE_READY_TO ACCEPT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$1;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$000(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    .line 89
    :cond_0
    return-void
.end method
