.class Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$3;
.super Ljava/lang/Object;
.source "BltTransporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;
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
    .line 491
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$3;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 494
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_0

    .line 495
    const-string v2, "WH-BLT"

    const-string v3, "<WATCH>  LOOKSIDE LAUNCH#$%^&*$%^&++++++++++++++++++!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    const-string v4, "<WATCH>  LOOKSIDE LAUNCH#$%^&*$%^&++++++++++++++++++!"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$3;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;

    move-result-object v0

    .line 503
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$3;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    move-result-object v1

    .line 505
    .local v1, "m":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$3;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->tryProcessCachedRequestWhilePhoneAvalible(Landroid/content/Context;)V

    .line 507
    .end local v1    # "m":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    :cond_1
    return-void
.end method
