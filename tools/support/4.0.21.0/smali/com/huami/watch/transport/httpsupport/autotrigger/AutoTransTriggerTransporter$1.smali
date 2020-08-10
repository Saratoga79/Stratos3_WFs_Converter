.class Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoTransTriggerTransporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$1;->this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v0, "com.huami.watch.http_support.TRANS_AUTOMATIC"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "trans_data"

    const-string v1, "close auto blue trans already ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method
