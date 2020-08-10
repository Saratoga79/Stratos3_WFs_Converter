.class public Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/huami/watch/watchface/custom/synctask/CustomTask$ICustomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;,
        Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;,
        Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomHeaderViewHolder;,
        Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;,
        Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;
    }
.end annotation


# instance fields
.field private itemHeight:I

.field private mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

.field private mControlBtn:Landroid/widget/Button;

.field private mControlContainer:Landroid/view/View;

.field private mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

.field private mCustomType:I

.field private mNoContentContainer:Landroid/view/View;

.field private mRecycleView:Landroid/support/v7/widget/RecyclerView;

.field private mResType:I

.field private mSeletedPos:I

.field private mState:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

.field private mViewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mRecycleView:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlBtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mNoContentContainer:Landroid/view/View;

    sget-object v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->NORMAL:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    iput-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mState:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mWatchName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mSeletedPos:I

    iput v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomType:I

    sget v1, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->NORMAL:I

    iput v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mResType:I

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    const/16 v0, 0x68

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->itemHeight:I

    return-void
.end method

.method static synthetic access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->itemHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mState:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    return-object p0
.end method

.method static synthetic access$502(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mState:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mSeletedPos:I

    return p0
.end method

.method static synthetic access$602(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mSeletedPos:I

    return p1
.end method

.method static synthetic access$620(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;I)I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mSeletedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mSeletedPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    return-object p0
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mNoContentContainer:Landroid/view/View;

    return-object p0
.end method

.method private init()V
    .locals 4

    new-instance v0, Lcom/huami/watch/watchface/custom/synctask/CustomTask;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/custom/synctask/CustomTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/huami/watch/watchface/custom/synctask/CustomTask;->setCustomListener(Lcom/huami/watch/watchface/custom/synctask/CustomTask$ICustomListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->getFolderName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/custom/synctask/CustomTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->itemHeight:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    new-instance v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;

    invoke-direct {v2, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mRecycleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mRecycleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mRecycleView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    new-instance v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)V

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->setOnItemClickLitener(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;II)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;
    .locals 3

    new-instance v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "huami.watchface.servicename"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "huami.watchface.customtype"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "watch_face_res_type"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0c0017

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$3;->$SwitchMap$com$huami$watch$watchface$custom$ui$WatchFaceCustomFragment$CustomState:[I

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mState:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;

    invoke-static {v1, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    invoke-static {v1, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->NORMAL:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mState:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mSeletedPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mSeletedPos:I

    invoke-virtual {p1, v1}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->saveCustomResult(I)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "custom_refresh_ui"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "huami.watchface.servicename"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mWatchName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "huami.watchface.customtype"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomType:I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "watch_face_res_type"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mResType:I

    :cond_0
    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomType:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "err custom type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomType:I

    if-nez p2, :cond_2

    new-instance p2, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundAction;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mWatchName:Ljava/lang/String;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mResType:I

    invoke-direct {p2, p3, v0, v1}, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundAction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    :cond_2
    const p2, 0x7f030006

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0c0016

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mRecycleView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f0c0018

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlBtn:Landroid/widget/Button;

    const p2, 0x7f0c0017

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlContainer:Landroid/view/View;

    const p2, 0x7f0c0019

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mNoContentContainer:Landroid/view/View;

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlContainer:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mControlBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f070007

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->init()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->destroyView()V

    :cond_1
    return-void
.end method

.method public onFileListFound(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mNoContentContainer:Landroid/view/View;

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mNoContentContainer:Landroid/view/View;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->mCustomAction:Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->onFileListFound(Ljava/util/List;)V

    :cond_2
    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->initView()V

    return-void
.end method
