.class Lcom/huami/watch/transport/DataApi$TransportDataListener;
.super Lcom/huami/watch/transport/ITransportDataListener$Stub;
.source "DataApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/DataApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/DataApi;


# direct methods
.method private constructor <init>(Lcom/huami/watch/transport/DataApi;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/huami/watch/transport/DataApi$TransportDataListener;->this$0:Lcom/huami/watch/transport/DataApi;

    invoke-direct {p0}, Lcom/huami/watch/transport/ITransportDataListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/transport/DataApi;Lcom/huami/watch/transport/DataApi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huami/watch/transport/DataApi;
    .param p2, "x1"    # Lcom/huami/watch/transport/DataApi$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataApi$TransportDataListener;-><init>(Lcom/huami/watch/transport/DataApi;)V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 3
    .param p1, "mTransportDataItem"    # Lcom/huami/watch/transport/TransportDataItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v1, p0, Lcom/huami/watch/transport/DataApi$TransportDataListener;->this$0:Lcom/huami/watch/transport/DataApi;

    invoke-static {v1}, Lcom/huami/watch/transport/DataApi;->access$100(Lcom/huami/watch/transport/DataApi;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/DataApi$DataListener;

    .line 114
    .local v0, "listener":Lcom/huami/watch/transport/DataApi$DataListener;
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1}, Lcom/huami/watch/transport/DataApi$DataListener;->onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V

    .line 117
    :cond_0
    return-void
.end method
