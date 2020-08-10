.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$4;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$4;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$500(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    return-void
.end method
