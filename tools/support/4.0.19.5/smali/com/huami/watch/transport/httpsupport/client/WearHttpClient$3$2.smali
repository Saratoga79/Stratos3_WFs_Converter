.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$2;
.super Ljava/lang/Object;
.source "WearHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$2;->this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$2;->this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$800(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    .line 256
    return-void
.end method
