.class public Lcom/huami/watch/watchface/model/WatchFaceModuleItem;
.super Ljava/lang/Object;


# static fields
.field private static sKeyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private charset:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private config:Ljava/lang/String;

.field private configlist:Ljava/lang/String;

.field private dataType:I

.field private font:Ljava/lang/String;

.field private gap:I

.field private height:I

.field private id:I

.field private mask:Ljava/lang/String;

.field private model:I

.field private preview:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "configList"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preview"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mask"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataType"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "font"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gap"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "charset"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->id:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->x:I

    iput v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->y:I

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiglist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->configlist:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->dataType:I

    return v0
.end method

.method public getFontConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->font:Ljava/lang/String;

    return-object v0
.end method

.method public getGap()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->gap:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->height:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->id:I

    return v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->model:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->y:I

    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->sKeyMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->charset:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->color:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->gap:I

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->font:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->model:I

    goto :goto_0

    :pswitch_5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->dataType:I

    goto :goto_0

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->height:I

    goto :goto_0

    :pswitch_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->width:I

    goto :goto_0

    :pswitch_8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->y:I

    goto :goto_0

    :pswitch_9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->x:I

    goto :goto_0

    :pswitch_a
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->id:I

    goto :goto_0

    :pswitch_b
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->mask:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->preview:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->configlist:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->config:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    iput-object p2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->type:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchFaceModuleItem{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", config=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->config:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", config_list=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->configlist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", preview=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->preview:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mask=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->mask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->model:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
