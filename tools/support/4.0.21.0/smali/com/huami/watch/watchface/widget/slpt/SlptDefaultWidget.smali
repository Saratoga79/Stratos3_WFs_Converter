.class public abstract Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;
.super Ljava/lang/Object;


# static fields
.field public static POWER_LEVEL_MODE_11:I

.field public static POWER_LEVLE_MODE_10:I


# instance fields
.field public dataPadLeft:I

.field public dataPadTop:I

.field public default_date:[[B

.field public default_num:[[B

.field public default_week:[[B

.field private height:I

.field public iconPadTop:I

.field private mContext:Landroid/content/Context;

.field private model:I

.field private need26WC:Z

.field private numPath:Ljava/lang/String;

.field public weekPadingLeft:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->POWER_LEVLE_MODE_10:I

    const/16 v0, 0xb

    sput v0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->POWER_LEVEL_MODE_11:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const-string v1, ""

    iput-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->numPath:Ljava/lang/String;

    const/16 v1, 0xe

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->iconPadTop:I

    const/16 v1, 0x2a

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->dataPadTop:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->dataPadLeft:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->weekPadingLeft:I

    const/16 v2, 0xa

    new-array v3, v2, [[B

    iput-object v3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_num:[[B

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_date:[[B

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_week:[[B

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->x:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->y:I

    iput p6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    iput p4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->width:I

    iput p5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->height:I

    iput-boolean v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->need26WC:Z

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->initDefaultNumMem()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const-string v1, ""

    iput-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->numPath:Ljava/lang/String;

    const/16 v1, 0xe

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->iconPadTop:I

    const/16 v1, 0x2a

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->dataPadTop:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->dataPadLeft:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->weekPadingLeft:I

    const/16 v2, 0xa

    new-array v3, v2, [[B

    iput-object v3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_num:[[B

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_date:[[B

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_week:[[B

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->x:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->y:I

    iput p6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    iput p4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->width:I

    iput p5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->height:I

    iput-object p7, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->numPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->need26WC:Z

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->initDefaultNumMem()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->numPath:Ljava/lang/String;

    const/16 v0, 0xe

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->iconPadTop:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->dataPadTop:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->dataPadLeft:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->weekPadingLeft:I

    const/16 v1, 0xa

    new-array v2, v1, [[B

    iput-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_num:[[B

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_date:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_week:[[B

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->x:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->y:I

    iput p6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    iput p4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->width:I

    iput p5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->height:I

    iput-boolean p7, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->need26WC:Z

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->initDefaultNumMem()V

    return-void
.end method

.method private initDefaultNumMem()V
    .locals 7

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, "datawidget/font/01/default_%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "datawidget/model_4/font/%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->checkNeed26WC()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    const-string v1, "datawidget/model_3/font/%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "datawidget/model_3/8C/num/%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v1, 0x17

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->iconPadTop:I

    const/16 v1, 0x2f

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "datawidget/font/03/8c/%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->iconPadTop:I

    const/16 v1, 0x2c

    :goto_1
    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->dataPadTop:I

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "datawidget/font/02/default_%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->numPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%d.png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0xa

    if-ge v3, v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_num:[[B

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public checkNeed26WC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->need26WC:Z

    return v0
.end method

.method public getDefaultDateMem()[[B
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_date:[[B

    return-object v0
.end method

.method public getDefaultNumMem()[[B
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_num:[[B

    return-object v0
.end method

.method public getDefaultWeekMem()[[B
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_week:[[B

    return-object v0
.end method

.method public getDotView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/01/dot.png"

    :goto_0
    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_4/font/dot.png"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->checkNeed26WC()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/font/dot.png"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/8C/num/dot.png"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/03/8c/dot.png"

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/02/dot.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->height:I

    return v0
.end method

.method public getMinusView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/android/minus.png"

    :goto_0
    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_4/font/minus.png"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->checkNeed26WC()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/font/minus.png"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/8C/num/minus.png"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/03/8c/minus.png"

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/02/minus.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    return v0
.end method

.method public getPathView(Ljava/lang/String;)Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    :goto_0
    return-object v0
.end method

.method public getPercentView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/01/percent_icon.png"

    :goto_0
    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_4/font/percent_icon.png"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->checkNeed26WC()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/font/percent_icon.png"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/8C/num/percent_icon.png"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/03/8c/percent_icon.png"

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/font/02/percent_icon.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object v0
.end method

.method public abstract getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->y:I

    return v0
.end method

.method public initDefaultDateMem()V
    .locals 7

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->model:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/String;

    const-string v2, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/android/date_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/model_4/font/%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->checkNeed26WC()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/model_3/font/%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/model_3/8C/num/%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0xe

    iput v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->weekPadingLeft:I

    goto :goto_1

    :cond_1
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/font/data5/8c/%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/font/02/default_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_date:[[B

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initDefaultWeekMem()V
    .locals 7

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->getModel()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v2, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/en/week_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/week_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/model_4/week/w%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/model_4/week/cn/w%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/model_3/8C/num/week_zh_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/model_3/8C/num/week_en_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/date_2/en/week_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "datawidget/date_2/week_%d.png"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x7

    if-ge v3, v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->default_week:[[B

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
