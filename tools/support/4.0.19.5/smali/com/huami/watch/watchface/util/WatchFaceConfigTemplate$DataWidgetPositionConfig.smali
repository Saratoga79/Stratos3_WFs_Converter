.class public Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataWidgetPositionConfig"
.end annotation


# instance fields
.field public KEY:Ljava/lang/String;

.field private id:I

.field private mDefaultDataType:I

.field private mDefaultModel:I

.field private mSavedConfig:Ljava/lang/String;

.field private mSavedIndex:I

.field private mask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

.field private widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(IIILjava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DataWidget"

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->KEY:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->widgets:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->KEY:Ljava/lang/String;

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->id:I

    iput p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->x:I

    iput p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->y:I

    iput-object p4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mSavedConfig:Ljava/lang/String;

    iput p5, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mDefaultDataType:I

    iput p6, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mDefaultModel:I

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;IILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;-><init>(IIILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->widgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    return-object p1
.end method

.method private contains(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-static {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->access$100(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->access$200(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public addDataWidget(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addDataWidget Failed. dataType/model is already exists. dataType: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " model: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pos:["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->x:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->y:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WatchFaceConfigTemplate"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v8, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    iget v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->id:I

    iget v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->x:I

    iget v4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->y:I

    move-object v0, v8

    move v2, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mSavedConfig:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, v8, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->config:Ljava/lang/String;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mSavedConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mSavedIndex:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mDefaultDataType:I

    invoke-static {v8}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->access$100(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)I

    move-result p2

    if-ne p1, p2, :cond_2

    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mDefaultModel:I

    invoke-static {v8}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->access$200(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)I

    move-result p2

    if-ne p1, p2, :cond_2

    invoke-virtual {v8}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getConfig()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mSavedConfig:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->id:I

    check-cast p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    iget p1, p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->id:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDataWidgetConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->widgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataWidgetMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    return-object v0
.end method

.method public getSavedDataWidgetIndex()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->mSavedIndex:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->y:I

    return v0
.end method
