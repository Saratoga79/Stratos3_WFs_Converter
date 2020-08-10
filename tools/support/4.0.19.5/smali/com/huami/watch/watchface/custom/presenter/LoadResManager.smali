.class public Lcom/huami/watch/watchface/custom/presenter/LoadResManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.huami.watch.watchface.custom.presenter.LoadResManager"

.field private static sInstance:Lcom/huami/watch/watchface/custom/presenter/LoadResManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;
    .locals 1

    const-class v0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->sInstance:Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->sInstance:Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    :cond_0
    const-class p0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->sInstance:Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    const-class v0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private loadWatchFaceBackgroundSDcardRes(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/custom/model/CustomViewHolder;

    iget-object v4, p0, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/huami/watch/watchface/custom/model/PathInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/huami/watch/watchface/custom/model/PathInfo;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/huami/watch/watchface/custom/model/CustomViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/huami/watch/watchface/custom/model/PathInfo;)V

    sget-object v1, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viewhoudler:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    iget v0, p3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->configType:I

    iget p3, p3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->position:I

    packed-switch v0, :pswitch_data_0

    return-object p2

    :pswitch_0
    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getTimeDigitals()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getSavedTimeDigitalIndex()I

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPositionConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->getDataWidgetConfigs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPositionConfigs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->getSavedDataWidgetIndex()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getGraduations()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getSavedGraduationIndex()I

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getTimeHands()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getSavedTimeHandIndex()I

    move-result p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getSavedBackgroundIndex()I

    move-result p1

    :goto_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadWatchFaceCustomSDcardRes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->TAG:Ljava/lang/String;

    const-string v2, "-------------loadWatchFaceCustomSDcardRes, loadSdcardRes---------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->loadWatchFaceBackgroundSDcardRes(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
