.class Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadCompleted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceConfigTemplate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-static {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->access$900(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-static {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->access$900(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;->onLoadComplete(I)V

    :cond_1
    :goto_0
    return-void
.end method
