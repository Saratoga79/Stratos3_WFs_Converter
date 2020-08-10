.class public abstract Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String; = "com.huami.watch.watchface.custom.presenter.AbsCustomSelectedItem"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResType:I

.field protected mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

.field protected mWatchFaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->NORMAL:I

    iput v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mResType:I

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mWatchFaceName:Ljava/lang/String;

    iput p3, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mResType:I

    return-void
.end method


# virtual methods
.method public abstract getBackground()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBgDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getFgDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getSavedIndex()I
.end method

.method public saveSelectedItem(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->getBackground()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getConfig()Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mResType:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->saveCustomReslut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setTemplate(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->mTempLate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    return-void
.end method
