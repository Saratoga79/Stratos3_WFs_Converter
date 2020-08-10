.class public Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;
.super Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Background"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->preview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->title:Ljava/lang/String;

    return-object v0
.end method
