.class Lcom/huami/watch/transport/DataTransportService$8;
.super Landroid/database/ContentObserver;
.source "DataTransportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService;->registerDeviceBondTypeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/DataTransportService;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$8;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 720
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$8;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$900(Lcom/huami/watch/transport/DataTransportService;)V

    .line 721
    const-string v0, "Trans-Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_DEVICE_BOND_TYPE changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$8;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportService;->access$1000(Lcom/huami/watch/transport/DataTransportService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void
.end method
