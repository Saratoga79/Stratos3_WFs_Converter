.class public Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;
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

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->refresh()V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getTimeHands()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getTimeHandMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

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

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getTimeHandMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

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

    const-string v0, "TimeHand"

    return-object v0
.end method

.method public getSavedIndex()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getSavedTimeHandIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
