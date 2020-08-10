.class Lcom/huami/watch/transport/DataTransportService$2$7;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService$2;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportService$2;

.field final synthetic val$dataItem:Lcom/huami/watch/transport/TransportDataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService$2;Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$2$7;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$2$7;->val$dataItem:Lcom/huami/watch/transport/TransportDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2$7;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v0, v0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$7;->val$dataItem:Lcom/huami/watch/transport/TransportDataItem;

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/DataTransportService;->sendDataInternal(Lcom/huami/watch/transport/TransportDataItem;)V

    .line 223
    return-void
.end method
