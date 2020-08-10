.class public abstract Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BasePreviewConfig"
.end annotation


# instance fields
.field protected config:Ljava/lang/String;

.field protected preview:Landroid/graphics/drawable/Drawable;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->config:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    iget-object p1, p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->config:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract getConfig()Ljava/lang/String;
.end method

.method public abstract getPreviewDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
