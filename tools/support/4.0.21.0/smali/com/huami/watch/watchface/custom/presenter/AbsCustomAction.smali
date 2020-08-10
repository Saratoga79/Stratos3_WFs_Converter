.class public abstract Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/custom/synctask/CustomTask$ICustomListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFilePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/custom/model/PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResType:I

.field private mViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchFaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mWatchFaceName:Ljava/lang/String;

    sget v0, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->NORMAL:I

    iput v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mResType:I

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mWatchFaceName:Ljava/lang/String;

    iput p3, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mResType:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mFilePaths:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyView()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mFilePaths:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mFilePaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    iput-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mFilePaths:Ljava/util/List;

    return-void
.end method

.method public getAdapterViewHolder(I)Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mFilePaths:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getDestResPath()Ljava/lang/String;
.end method

.method public abstract getDestSlptPath()Ljava/lang/String;
.end method

.method public abstract getFolderName()Ljava/lang/String;
.end method

.method public abstract getSrcSlptPathName()Ljava/lang/String;
.end method

.method public onFileListFound(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->loadWatchFaceCustomSDcardRes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    return-void
.end method

.method public removeView(I)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->destroy()V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->getPathInfo()Lcom/huami/watch/watchface/custom/model/PathInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/huami/watch/watchface/custom/model/PathInfo;->path:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->getPathInfo()Lcom/huami/watch/watchface/custom/model/PathInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/huami/watch/watchface/custom/model/PathInfo;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->deleteRes(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveCustomResult(I)V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mViewHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->getPathInfo()Lcom/huami/watch/watchface/custom/model/PathInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/huami/watch/watchface/custom/model/PathInfo;->path:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->getDestResPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->copyCustomRes(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->getSrcSlptPathName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->getDestSlptPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->copyCustomRes(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mWatchFaceName:Ljava/lang/String;

    const-string v2, "Background"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@customBg/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->mResType:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->saveCustomReslut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
