.class public Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field private mBackgroundType:I

.field private mResType:I

.field private mWatchName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mBackgroundType:I

    sget v0, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->NORMAL:I

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mResType:I

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mWatchName:Ljava/lang/String;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mBackgroundType:I

    iget v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mResType:I

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->newInstance(Ljava/lang/String;II)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "huami.watchface.servicename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mWatchName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "huami.watchface.customtype"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mBackgroundType:I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "watch_face_res_type"

    sget v1, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->NORMAL:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->mResType:I

    const p1, 0x7f030001

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;->init()V

    return-void
.end method
