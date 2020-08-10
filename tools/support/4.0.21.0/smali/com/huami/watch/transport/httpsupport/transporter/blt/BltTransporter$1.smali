.class Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$1;
.super Ljava/lang/Object;
.source "BltTransporter.java"

# interfaces
.implements Lcom/huami/watch/transport/Transporter$ChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelChanged(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.huami.watch.WATCH_CONNED_4_COMPANION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
