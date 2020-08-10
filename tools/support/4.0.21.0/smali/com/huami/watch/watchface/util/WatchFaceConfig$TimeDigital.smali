.class public Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeDigital"
.end annotation


# instance fields
.field color:I

.field config:Ljava/lang/String;

.field fontConfig:Ljava/lang/String;

.field fontInfo:Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;

.field gap:I

.field height:I

.field model:I

.field final synthetic this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;IIIIILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->color:I

    iput p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->model:I

    iput p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->x:I

    iput p4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->y:I

    iput p5, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->width:I

    iput p6, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->height:I

    iput-object p7, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontConfig:Ljava/lang/String;

    iput p8, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->gap:I

    if-eqz p9, :cond_0

    :try_start_0
    invoke-static {p9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->color:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->encodeConfig()V

    return-void
.end method

.method public constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->color:I

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->config:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->decodeConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->parseImageFontInfo()V

    return-void
.end method

.method private decodeConfig()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->config:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "model"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->model:I

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->x:I

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->y:I

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->width:I

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->height:I

    const-string v1, "fontConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontConfig:Ljava/lang/String;

    const-string v1, "gap"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->gap:I

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->color:I

    const-string v0, "WatchFaceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeDigital.decodeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private encodeConfig()V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "model"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->model:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "x"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "width"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fontConfig"

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontConfig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gap"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->gap:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "color"

    iget v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->color:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->config:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchFaceConfig"

    const-string v2, "TimeDigital.encodeConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->config:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WatchFaceConfig"

    const-string v2, "TimeDigital.encodeConfig Error."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private parseImageFontInfo()V
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontConfig:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontConfig:Ljava/lang/String;

    const-string v1, "@wfz/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontConfig:Ljava/lang/String;

    const-string v1, "@wfz/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-static {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->access$100(Lcom/huami/watch/watchface/util/WatchFaceConfig;)Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/font.xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontConfig:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;Ljava/lang/String;Lcom/huami/watch/watchface/util/WatchFaceConfig$1;)V

    iput-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontInfo:Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    const-string v4, "font"

    invoke-virtual {v3}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getCharset()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontInfo:Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;

    invoke-virtual {v3}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->access$400(Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;CLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "WatchFaceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseImageFontInfo invalid charset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->color:I

    return v0
.end method

.method public getGap()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->gap:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->height:I

    return v0
.end method

.method public getImageFontInfo()Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->fontInfo:Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;

    return-object v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->model:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeDigital: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->config:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
