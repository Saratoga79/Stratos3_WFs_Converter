.class Lcom/huami/watch/transport/AndroidListenerTest$2;
.super Ljava/lang/Object;
.source "AndroidListenerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/AndroidListenerTest;->onChannelAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/AndroidListenerTest;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/AndroidListenerTest;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/huami/watch/transport/AndroidListenerTest$2;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest$2;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-static {v0}, Lcom/huami/watch/transport/AndroidListenerTest;->access$200(Lcom/huami/watch/transport/AndroidListenerTest;)V

    .line 96
    return-void
.end method
