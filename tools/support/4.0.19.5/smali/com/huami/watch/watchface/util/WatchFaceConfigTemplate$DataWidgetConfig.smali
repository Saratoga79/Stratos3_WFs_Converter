.class public Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;
.super Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataWidgetConfig"
.end annotation


# instance fields
.field public KEY:Ljava/lang/String;

.field private dataType:I

.field private id:I

.field private model:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;-><init>()V

    const-string v0, "DataWidget"

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->KEY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->KEY:Ljava/lang/String;

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->id:I

    iput p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->dataType:I

    iput p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->x:I

    iput p4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->y:I

    iput p5, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->model:I

    iput-object p6, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->preview:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->encodeConfig()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;-><init>()V

    const-string v0, "DataWidget"

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->KEY:Ljava/lang/String;

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->config:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->decodeConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->dataType:I

    return p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->model:I

    return p0
.end method

.method private decodeConfig()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->config:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->id:I

    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->dataType:I

    const-string v1, "model"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->model:I

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->x:I

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->y:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataWidget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->KEY:Ljava/lang/String;

    return-void
.end method

.method private encodeConfig()V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dataType"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->dataType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "model"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->model:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "x"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->config:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WatchFaceConfigTemplate"

    const-string v2, "DataWidgetConfig.encodeConfig Error."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->dataType:I

    return v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->model:I

    return v0
.end method

.method public getPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->preview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->model:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
