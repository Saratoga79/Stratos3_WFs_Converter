.class Lcom/huami/watch/transport/ChannelApi$TransportChannelListener;
.super Lcom/huami/watch/transport/ITransportChannelListener$Stub;
.source "ChannelApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/ChannelApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportChannelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/ChannelApi;


# direct methods
.method private constructor <init>(Lcom/huami/watch/transport/ChannelApi;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/huami/watch/transport/ChannelApi$TransportChannelListener;->this$0:Lcom/huami/watch/transport/ChannelApi;

    invoke-direct {p0}, Lcom/huami/watch/transport/ITransportChannelListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/transport/ChannelApi;Lcom/huami/watch/transport/ChannelApi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huami/watch/transport/ChannelApi;
    .param p2, "x1"    # Lcom/huami/watch/transport/ChannelApi$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/ChannelApi$TransportChannelListener;-><init>(Lcom/huami/watch/transport/ChannelApi;)V

    return-void
.end method


# virtual methods
.method public onChannelChanged(Z)V
    .locals 3
    .param p1, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v2, p0, Lcom/huami/watch/transport/ChannelApi$TransportChannelListener;->this$0:Lcom/huami/watch/transport/ChannelApi;

    invoke-static {v2}, Lcom/huami/watch/transport/ChannelApi;->access$100(Lcom/huami/watch/transport/ChannelApi;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/ChannelApi$ChannelListener;

    .line 95
    .local v1, "listener":Lcom/huami/watch/transport/ChannelApi$ChannelListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/transport/ChannelApi$ChannelListener;->onChannelChanged(Z)V

    goto :goto_0

    .line 97
    .end local v1    # "listener":Lcom/huami/watch/transport/ChannelApi$ChannelListener;
    :cond_0
    return-void
.end method
