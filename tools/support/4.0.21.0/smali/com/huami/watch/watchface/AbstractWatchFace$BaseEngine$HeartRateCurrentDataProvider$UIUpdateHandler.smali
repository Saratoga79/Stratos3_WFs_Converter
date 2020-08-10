.class final Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->access$3600(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;I)V

    return-void
.end method
