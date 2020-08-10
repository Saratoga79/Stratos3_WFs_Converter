.class public Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;
.super Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->refresh()V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBackgroundMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBackgroundMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->getFgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "Background"

    return-object v0
.end method

.method public getSavedIndex()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getSavedBackgroundIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public saveSelectedItem(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->getBackground()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->getKey()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mResType:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getCustomReslut(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->mResType:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->saveCustomReslut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    const-string v2, "0001"

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lcom/huami/watch/wearubc/UbcInterface;->recordPropertyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v2, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save not same background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_3

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@customBg/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "0002"

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lcom/huami/watch/wearubc/UbcInterface;->recordPropertyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p1, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save custom background: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
