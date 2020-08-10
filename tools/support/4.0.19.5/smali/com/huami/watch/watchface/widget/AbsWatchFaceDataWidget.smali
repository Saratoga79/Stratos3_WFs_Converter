.class public abstract Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/WatchDataListener;


# instance fields
.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->visible:Z

    return-void
.end method


# virtual methods
.method public abstract getX()I
.end method

.method public abstract getY()I
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->visible:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->visible:Z

    return-void
.end method
