.class public Lcom/huami/watch/watchface/util/TypefaceManager;
.super Ljava/lang/Object;


# static fields
.field private static sInstance:Lcom/huami/watch/watchface/util/TypefaceManager;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/TypefaceManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/TypefaceManager;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/TypefaceManager;->mAssetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method public static get()Lcom/huami/watch/watchface/util/TypefaceManager;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/util/TypefaceManager;->sInstance:Lcom/huami/watch/watchface/util/TypefaceManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/util/TypefaceManager;->sInstance:Lcom/huami/watch/watchface/util/TypefaceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huami/watch/watchface/util/TypefaceManager;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/util/TypefaceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/watchface/util/TypefaceManager;->sInstance:Lcom/huami/watch/watchface/util/TypefaceManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFromAsset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TypefaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/util/TypefaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/watchface/util/TypefaceManager;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/util/TypefaceManager;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v2, "TypefaceManager"

    const-string v3, " init typeface."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/util/TypefaceManager;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "TypefaceManager"

    const-string v2, " found cache."

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
