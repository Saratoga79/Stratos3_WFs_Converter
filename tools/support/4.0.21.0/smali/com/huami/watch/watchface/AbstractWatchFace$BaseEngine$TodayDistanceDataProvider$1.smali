.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "TodayDistanceDataProvider onChange."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->access$2700(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;)V

    return-void
.end method
