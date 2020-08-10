.class public Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;
.super Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeDigital"
.end annotation


# instance fields
.field color:I

.field fontConfig:Ljava/lang/String;

.field gap:I

.field height:I

.field model:I

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->color:I

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->model:I

    iput p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->x:I

    iput p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->y:I

    iput p4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->width:I

    iput p5, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->height:I

    iput-object p6, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->fontConfig:Ljava/lang/String;

    iput p7, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->gap:I

    if-eqz p8, :cond_0

    :try_start_0
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->color:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->encodeConfig()V

    return-void
.end method

.method private encodeConfig()V
    .locals 4

    const-string v0, "WatchFaceConfigTemplate"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "model"

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->model:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "x"

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->x:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "y"

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->y:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "width"

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->width:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->height:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "fontConfig"

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->fontConfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gap"

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->gap:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "color"

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->color:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->config:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeDigital.encodeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->config:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TimeDigital.encodeConfig Error."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->preview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->title:Ljava/lang/String;

    return-object v0
.end method
