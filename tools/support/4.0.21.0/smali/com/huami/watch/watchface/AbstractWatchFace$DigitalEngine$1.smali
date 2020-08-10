.class Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onDrawWatchFace(Landroid/graphics/Canvas;FFFFLjava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->access$5402(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;Z)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->access$5502(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;Z)Z

    return-void
.end method
