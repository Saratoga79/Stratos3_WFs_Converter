.class Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransporterClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/TransporterClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportServiceStartReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/transport/TransporterClassic$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huami/watch/transport/TransporterClassic$1;

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 472
    sget-boolean v3, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 473
    const-string v3, "Transporter-Classic"

    const-string v4, "On TransportService Start Received!!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    :cond_0
    invoke-static {}, Lcom/huami/watch/transport/TransporterClassic;->access$1500()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 476
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/huami/watch/transport/Transporter;>;"
    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/Transporter;

    .line 478
    .local v2, "transporter":Lcom/huami/watch/transport/Transporter;
    if-eqz v2, :cond_1

    .line 479
    invoke-virtual {v2}, Lcom/huami/watch/transport/Transporter;->connectTransportService()V

    goto :goto_0

    .line 483
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/huami/watch/transport/Transporter;>;"
    .end local v2    # "transporter":Lcom/huami/watch/transport/Transporter;
    :cond_2
    return-void
.end method
