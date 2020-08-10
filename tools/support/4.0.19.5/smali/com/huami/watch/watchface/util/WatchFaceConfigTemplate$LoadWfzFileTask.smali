.class Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadWfzFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->doInBackground([Ljava/io/File;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->access$1000(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/io/File;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-static {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->access$1100(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WatchFaceConfigTemplate"

    const-string v1, "Load task finished, destroy again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->onDestroy()V

    :cond_0
    return-void
.end method
