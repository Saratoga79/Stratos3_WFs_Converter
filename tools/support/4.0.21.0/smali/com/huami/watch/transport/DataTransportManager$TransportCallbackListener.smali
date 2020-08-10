.class Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;
.super Lcom/huami/watch/transport/ITransportCallbackListener$Stub;
.source "DataTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/DataTransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/DataTransportManager;


# direct methods
.method private constructor <init>(Lcom/huami/watch/transport/DataTransportManager;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-direct {p0}, Lcom/huami/watch/transport/ITransportCallbackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/transport/DataTransportManager;Lcom/huami/watch/transport/DataTransportManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huami/watch/transport/DataTransportManager;
    .param p2, "x1"    # Lcom/huami/watch/transport/DataTransportManager$1;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;-><init>(Lcom/huami/watch/transport/DataTransportManager;)V

    return-void
.end method


# virtual methods
.method public onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 4
    .param p1, "result"    # Lcom/huami/watch/transport/DataTransportResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p1}, Lcom/huami/watch/transport/DataTransportResult;->getDataItem()Lcom/huami/watch/transport/TransportDataItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/transport/TransportDataItem;->getCreateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$800(Lcom/huami/watch/transport/DataTransportManager;)Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/DataApi$CallbackListener;

    .line 328
    .local v1, "listener":Lcom/huami/watch/transport/DataApi$CallbackListener;
    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v1, p1}, Lcom/huami/watch/transport/DataApi$CallbackListener;->onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V

    .line 330
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$800(Lcom/huami/watch/transport/DataTransportManager;)Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    return-void
.end method
