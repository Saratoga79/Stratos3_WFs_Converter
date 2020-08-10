.class Lcom/huami/watch/transport/WifiFTPLauncher$1;
.super Ljava/lang/Object;
.source "WifiFTPLauncher.java"

# interfaces
.implements Lcom/huami/watch/transport/Transporter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/WifiFTPLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/WifiFTPLauncher;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/WifiFTPLauncher;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/huami/watch/transport/WifiFTPLauncher$1;->this$0:Lcom/huami/watch/transport/WifiFTPLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string v1, "start_service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/huami/watch/transport/WifiFTPLauncher$1;->this$0:Lcom/huami/watch/transport/WifiFTPLauncher;

    invoke-static {v1}, Lcom/huami/watch/transport/WifiFTPLauncher;->access$000(Lcom/huami/watch/transport/WifiFTPLauncher;)V

    .line 44
    :cond_0
    return-void
.end method
