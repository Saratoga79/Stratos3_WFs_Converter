.class public Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectMask"
.end annotation


# instance fields
.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mFg:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->mFg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->mBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method


# virtual methods
.method public getBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->mBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->mFg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
