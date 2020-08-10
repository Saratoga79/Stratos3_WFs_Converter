.class public Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;,
        Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;
    }
.end annotation


# static fields
.field private static final SUPPORT_DATA_TYPE:[[I

.field private static final SUPPORT_DATE_TYPE:[[I


# instance fields
.field private INTERNAL_PATH:Ljava/lang/String;

.field private destroyed:Z

.field private mBackgroundMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

.field private mBackgrounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;",
            ">;"
        }
    .end annotation
.end field

.field private mCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

.field private mContext:Landroid/content/Context;

.field private mDataWidgetPositionConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBackgroundIndex:I

.field private mDefaultGraduationIndex:I

.field private mDefaultTimeDigitalIndex:I

.field private mDefaultTimeHandIndex:I

.field private mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

.field private mGraduationMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

.field private mGraduations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadEventHandler:Landroid/os/Handler;

.field private mLoadWfzFileTask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;

.field private mLoadedPreviews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedPreviewsBmp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSavedBackgroundConfig:Ljava/lang/String;

.field private mSavedBackgroundIndex:I

.field private mSavedGraduationConfig:Ljava/lang/String;

.field private mSavedGraduationIndex:I

.field private mSavedTimeDigitalConfig:Ljava/lang/String;

.field private mSavedTimeDigitalIndex:I

.field private mSavedTimeHandConfig:Ljava/lang/String;

.field private mSavedTimeHandIndex:I

.field private mTimeDigitalMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

.field private mTimeDigitals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeHandMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

.field private mTimeHands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchFaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v8, 0x7

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v8, 0x8

    aput-object v2, v0, v8

    sput-object v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATA_TYPE:[[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    new-array v8, v1, [I

    fill-array-data v8, :array_b

    new-array v7, v7, [[I

    aput-object v0, v7, v3

    aput-object v2, v7, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    aput-object v0, v7, v1

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    aput-object v0, v7, v5

    aput-object v8, v7, v6

    sput-object v7, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATE_TYPE:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x3
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;ILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduations:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHands:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitals:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDataWidgetPositionConfigs:Ljava/util/ArrayList;

    new-instance p3, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;

    invoke-direct {p3, p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadEventHandler:Landroid/os/Handler;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviewsBmp:Ljava/util/HashMap;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->destroyed:Z

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->INTERNAL_PATH:Ljava/lang/String;

    iput-object p4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    new-instance p1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadWfzFileTask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadWfzFileTask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/io/File;

    aput-object p2, p4, p3

    invoke-virtual {p1, p4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduations:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHands:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitals:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDataWidgetPositionConfigs:Ljava/util/ArrayList;

    new-instance p3, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;

    invoke-direct {p3, p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadEventHandler:Landroid/os/Handler;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviewsBmp:Ljava/util/HashMap;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->destroyed:Z

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->INTERNAL_PATH:Ljava/lang/String;

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->updateSavedBackgroundConfig()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->updateSavedGraduationConfig()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->updateSavedTimeHandConfig()V

    iput-object p4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->loadWfzFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->destroyed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    return-object p0
.end method

.method private addBackground(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;

    invoke-direct {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;-><init>()V

    iput-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->config:Ljava/lang/String;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->preview:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->config:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundIndex:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultBackgroundIndex:I

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultBackgroundIndex:I

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundIndex:I

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->getConfig()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private varargs addDataWidgetPositionConfig(IIILjava/lang/String;Ljava/lang/String;I[[I)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p7

    new-instance v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    iget-object v2, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataWidget"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    invoke-direct/range {v2 .. v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;-><init>(IIILjava/lang/String;IILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    invoke-direct {v2, v11}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    iget-object v3, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    move-object/from16 v4, p4

    invoke-direct {p0, v3, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$502(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    move-object/from16 v4, p5

    invoke-direct {p0, v3, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$602(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    invoke-static {v10, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->access$702(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    aget v4, v4, v2

    aget-object v5, v1, v3

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPreview(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetTitle(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v4, v5, v7, v6}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->addDataWidget(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDataWidgetPositionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addGraduation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;

    invoke-direct {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;-><init>()V

    iput-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;->config:Ljava/lang/String;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07000e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;->title:Ljava/lang/String;

    iput-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;->preview:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationConfig:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;->config:Ljava/lang/String;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationIndex:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultGraduationIndex:I

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduations:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultGraduationIndex:I

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationIndex:I

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Graduation;->getConfig()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationConfig:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private addTimeDigital(IIIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    const-string v11, "@wfz/"

    new-instance v12, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;

    move-object v2, v12

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;-><init>(IIIIILjava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitals:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    move-object/from16 v3, p9

    invoke-direct {v1, v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/font.xml"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v0, v6}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    const-string v9, "font"

    invoke-virtual {v8}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getCharset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v3, :cond_0

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v9, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->access$1400(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;CLjava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WatchFaceConfigTemplate"

    const-string v11, "parseImageFontInfo invalid charset: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->parseImageFont()Lcom/huami/watch/watchface/widget/ImageFont;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p8, :cond_3

    :try_start_1
    invoke-static/range {p8 .. p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v20, v7

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_3
    const/16 v20, 0x0

    :goto_2
    :try_start_2
    new-instance v0, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;

    move-object v13, v0

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v21, p7

    invoke-direct/range {v13 .. v21}, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;-><init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;II)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x140

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v7, p2

    int-to-float v7, v7

    move/from16 v8, p3

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v5}, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_6

    iget-object v2, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070010

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->title:Ljava/lang/String;

    iput-object v0, v12, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->preview:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitals:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeDigitalConfig:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v12, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->config:Ljava/lang/String;

    iget-object v2, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeDigitalConfig:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeDigitalIndex:I

    goto :goto_4

    :cond_5
    iget v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultTimeDigitalIndex:I

    iget-object v2, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_6

    iget v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultTimeDigitalIndex:I

    iput v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeDigitalIndex:I

    invoke-virtual {v12}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeDigital;->getConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeDigitalConfig:Ljava/lang/String;

    :cond_6
    :goto_4
    return-void
.end method

.method private addTimeHand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;

    invoke-direct {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;-><init>()V

    iput-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;->config:Ljava/lang/String;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHands:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07000f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;->title:Ljava/lang/String;

    iput-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;->preview:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHands:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandConfig:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;->config:Ljava/lang/String;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHands:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandIndex:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultTimeHandIndex:I

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHands:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultTimeHandIndex:I

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandIndex:I

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$TimeHand;->getConfig()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandConfig:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private getBitmapFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "drawable"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v1, "getBitmapFromResName: Unable to find drawable "

    const-string v2, "WatchFaceConfigTemplate"

    if-lez p1, :cond_0

    :try_start_0
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getDataWidgetPreview(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    const v2, 0x7f07000c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "@assets/datawidget/preview_%d_%d.png"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getDataWidgetTitle(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070012

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001e

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001c

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001b

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001a

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070019

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001d

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070018

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070017

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070016

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070015

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070014

    goto :goto_0

    :pswitch_c
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070013

    goto :goto_0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getDrawableFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "drawable"

    const-string v1, "com.huami.watch.watchface.analogyellow"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Unable to find drawable "

    const-string v2, "WatchFaceConfigTemplate"

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private loadCurrentBg()V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mWatchFaceName:Ljava/lang/String;

    const-string v1, ".wfz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Background"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/.watchface/current/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getWatchFaceSave(Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceSave;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v1}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mWatchFaceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundIndex:I

    :cond_1
    return-void
.end method

.method public static loadWatchFaceTemplate(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadWatchFaceTemplate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WatchFaceConfigTemplate"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v4, ".wfz"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->findWatchFaceFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {v3, v0, v1, v5, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;-><init>(Landroid/content/Context;Ljava/io/File;ILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)V

    goto/16 :goto_1

    :cond_0
    const-string v4, "com.huami.watch.watchface.AnalogWatchFaceThirteen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x3

    const-string v7, "@drawable/watchface_custom_switch_focus_bg"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {v4, v0, v1, v8, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)V

    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setDefaultBackgroundIndex(I)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_0"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_1"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_2"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_4"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_5"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_6"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_7"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_thirteen_8"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    invoke-direct {v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->loadCurrentBg()V

    invoke-direct {v4, v7, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setBackgroundMask(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_thirteen_graduation"

    invoke-direct {v4, v0, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_thirteen_"

    const-string v1, "@drawable/watchface_default_thirteen_timehand_preview"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    const/16 v12, 0x64

    const/16 v13, 0x5e

    const/16 v16, 0x6

    sget-object v17, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATE_TYPE:[[I

    const-string v14, "@assets/datawidget/mask_3_fg.png"

    const-string v15, "@assets/datawidget/mask_3_bg.png"

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addDataWidgetPositionConfig(IIILjava/lang/String;Ljava/lang/String;I[[I)V

    :goto_0
    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    invoke-direct {v4, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    invoke-direct {v4, v5}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    invoke-direct {v4, v6}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    goto/16 :goto_2

    :cond_1
    const-string v4, "com.huami.watch.watchface.AnalogWatchFaceEleven"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {v4, v0, v1, v8, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)V

    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setDefaultBackgroundIndex(I)V

    const-string v0, "@drawable/watchface_default_eleven_bg"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_eleven_bg_1"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_eleven_bg_2"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_eleven_bg_3"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    invoke-direct {v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->loadCurrentBg()V

    invoke-direct {v4, v7, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setBackgroundMask(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_eleven_graduation"

    const-string v1, "@drawable/watchface_default_eleven_graduation_preview"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_eleven_"

    const-string v1, "@drawable/watchface_default_eleven_timehand_preview"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    const/16 v12, 0x64

    const/16 v13, 0x5e

    const/16 v16, 0x6

    sget-object v17, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATE_TYPE:[[I

    const-string v14, "@assets/datawidget/mask_3_fg.png"

    const-string v15, "@assets/datawidget/mask_3_bg.png"

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addDataWidgetPositionConfig(IIILjava/lang/String;Ljava/lang/String;I[[I)V

    goto :goto_0

    :cond_2
    const-string v4, "com.huami.watch.watchface.AnalogWatchFaceFourteen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v10, "@assets/timehand/watchface_custom_select_timehand_bg_0.png"

    const-string v11, "@assets/timehand/watchface_custom_select_timehand_fg_0.png"

    const-string v12, "@drawable/watchface_custom_switch_focus_graduation_fg"

    if-eqz v4, :cond_3

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {v4, v0, v1, v8, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)V

    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setDefaultBackgroundIndex(I)V

    const-string v0, "@drawable/watchface_default_fourteen_bg"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_fourteen_bg_1"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_fourteen_bg_2"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_fourteen_bg_3"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_default_fourteen_bg_4"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    invoke-direct {v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->loadCurrentBg()V

    invoke-direct {v4, v7, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setBackgroundMask(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setDefaultGraduationIndex(I)V

    const-string v0, "@assets/graduation/01"

    const-string v1, "@assets/graduation/01/graduation.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/graduation/02"

    const-string v1, "@assets/graduation/02/graduation.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/graduation/03"

    const-string v1, "@assets/graduation/03/graduation.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/graduation/04"

    const-string v1, "@assets/graduation/04/graduation.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/graduation/05"

    const-string v1, "@assets/graduation/05/graduation.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/graduation/00"

    const-string v1, "@assets/graduation/00/graduation.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v12, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setGraduationMask(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setDefaultTimeHandIndex(I)V

    const-string v0, "@assets/timehand/01"

    const-string v1, "@assets/timehand/01/preview.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/timehand/02"

    const-string v1, "@assets/timehand/02/preview.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/timehand/03"

    const-string v1, "@assets/timehand/03/preview.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v11, v10}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setTimeHandMask(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/16 v15, 0x34

    const/16 v16, 0x76

    const/16 v19, 0xa

    sget-object v20, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATA_TYPE:[[I

    const-string v17, "@assets/datawidget/mask_0_fg.png"

    const-string v18, "@assets/datawidget/mask_0_bg.png"

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addDataWidgetPositionConfig(IIILjava/lang/String;Ljava/lang/String;I[[I)V

    const/4 v14, 0x1

    const/16 v15, 0x77

    const/16 v16, 0xbb

    const/16 v19, 0x1

    sget-object v20, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATA_TYPE:[[I

    const-string v17, "@assets/datawidget/mask_1_fg.png"

    const-string v18, "@assets/datawidget/mask_1_bg.png"

    invoke-direct/range {v13 .. v20}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addDataWidgetPositionConfig(IIILjava/lang/String;Ljava/lang/String;I[[I)V

    const/4 v14, 0x2

    const/16 v15, 0xb8

    const/16 v16, 0x76

    const/16 v19, 0x2

    sget-object v20, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATA_TYPE:[[I

    const-string v17, "@assets/datawidget/mask_2_fg.png"

    const-string v18, "@assets/datawidget/mask_2_bg.png"

    invoke-direct/range {v13 .. v20}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addDataWidgetPositionConfig(IIILjava/lang/String;Ljava/lang/String;I[[I)V

    const/4 v14, 0x3

    const/16 v15, 0x64

    const/16 v16, 0x5e

    const/16 v19, 0x6

    sget-object v20, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->SUPPORT_DATE_TYPE:[[I

    const-string v17, "@assets/datawidget/mask_3_fg.png"

    const-string v18, "@assets/datawidget/mask_3_bg.png"

    invoke-direct/range {v13 .. v20}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addDataWidgetPositionConfig(IIILjava/lang/String;Ljava/lang/String;I[[I)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "com.huami.watch.watchface.AnalogWatchFaceFifteen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {v4, v0, v1, v8, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)V

    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setDefaultBackgroundIndex(I)V

    const-string v0, "@drawable/watchface_bg_analog_fifteen_0"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_fifteen_1"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    const-string v0, "@drawable/watchface_bg_analog_fifteen_2"

    invoke-direct {v4, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    invoke-direct {v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->loadCurrentBg()V

    invoke-direct {v4, v7, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setBackgroundMask(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/graduation/06"

    const-string v1, "@assets/graduation/06/graduation.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v12, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setGraduationMask(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "@assets/timehand/04"

    const-string v1, "@assets/timehand/04/preview.png"

    invoke-direct {v4, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v11, v10}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setTimeHandMask(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    invoke-direct {v4, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    invoke-direct {v4, v5}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid serviceName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move-object v4, v3

    :goto_2
    return-object v4
.end method

.method private loadWfzFile(Ljava/io/File;)V
    .locals 27

    move-object/from16 v10, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mWatchFaceName:Ljava/lang/String;

    iget-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->getWatchFaceExternalLoader(Ljava/io/File;Ljava/util/Locale;)Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    move-result-object v0

    iput-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    iget-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFace()Lcom/huami/watch/watchface/model/WatchFaceModule;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/.watchface/current/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getWatchFaceSave(Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceSave;

    move-result-object v11

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModule;->getWatchFaceItemList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1b

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v14, v0, :cond_1a

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/loader/WfzConstants;->parseItemType(Ljava/lang/String;)I

    move-result v0

    const-string v9, "@wfz/"

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    if-eq v0, v3, :cond_11

    const-string v8, "_bg"

    const-string v7, "_fg"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    if-eq v0, v1, :cond_6

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    move-object/from16 v17, v12

    move/from16 v18, v14

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_1
    if-eqz v11, :cond_2

    const-string v0, "TimeDigital"

    invoke-virtual {v11, v0}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeDigitalConfig:Ljava/lang/String;

    :cond_2
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v1

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getX()I

    move-result v2

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getY()I

    move-result v3

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getHeight()I

    move-result v5

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getFontConfig()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getGap()I

    move-result v17

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getColor()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getPreview()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    const/4 v13, 0x4

    move-object/from16 v6, v16

    move-object v13, v7

    move/from16 v7, v17

    move-object/from16 v17, v12

    move-object v12, v8

    move-object/from16 v8, v18

    move/from16 v18, v14

    move-object v14, v9

    move-object/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeDigital(IIIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setTimeDigitalMask(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfiglist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/watchface/loader/WfzConstants;->parseItemType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v1

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getY()I

    move-result v3

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getFontConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getGap()I

    move-result v7

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getColor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getPreview()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeDigital(IIIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    invoke-direct {v10, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    goto/16 :goto_1

    :cond_6
    move-object v13, v7

    move-object/from16 v17, v12

    move/from16 v18, v14

    move-object v12, v8

    move-object v14, v9

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getId()I

    move-result v0

    if-ltz v0, :cond_0

    if-eqz v11, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataWidget"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataWidget"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_3

    :cond_7
    move-object/from16 v23, v2

    :goto_3
    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getId()I

    move-result v20

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getX()I

    move-result v21

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getY()I

    move-result v22

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v24

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;-><init>(IIILjava/lang/String;IILcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    iget-object v3, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDataWidgetPositionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    invoke-direct {v3, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {v10, v5, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$502(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v2, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$602(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->access$702(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    :cond_8
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfiglist()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {v3, v2}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huami/watch/watchface/loader/WfzConstants;->parseItemType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_9

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v5

    invoke-static {v5}, Lcom/huami/watch/watchface/util/SingletonWrapper;->isSupportDataType(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v5

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v6

    invoke-direct {v10, v5, v6}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPreview(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v6

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v7

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v4

    invoke-direct {v10, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetTitle(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->addDataWidget(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v1

    invoke-static {v1}, Lcom/huami/watch/watchface/util/SingletonWrapper;->isSupportDataType(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v1

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v2

    invoke-direct {v10, v1, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPreview(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v2

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v3

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v4

    invoke-direct {v10, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetTitle(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->addDataWidget(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    invoke-static {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->access$1200(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDataWidgetPositionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    move-object v13, v7

    move-object/from16 v17, v12

    move/from16 v18, v14

    move-object v12, v8

    move-object v14, v9

    if-eqz v11, :cond_d

    const-string v0, "TimeHand"

    invoke-virtual {v11, v0}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v11, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandConfig:Ljava/lang/String;

    :cond_d
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/preview.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setTimeHandMask(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfiglist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huami/watch/watchface/loader/WfzConstants;->parseItemType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_f

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v5, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addTimeHand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    invoke-direct {v10, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v17, v12

    move/from16 v18, v14

    move-object v14, v9

    if-eqz v11, :cond_12

    const-string v0, "Graduation"

    invoke-virtual {v11, v0}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v11, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationConfig:Ljava/lang/String;

    :cond_12
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/graduation.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    const-string v0, "@drawable/watchface_custom_switch_focus_graduation_fg"

    :goto_6
    invoke-direct {v10, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setGraduationMask(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfiglist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huami/watch/watchface/loader/WfzConstants;->parseItemType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_14

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v5, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addGraduation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    move-object/from16 v17, v12

    move/from16 v18, v14

    move-object v14, v9

    if-eqz v11, :cond_16

    const-string v0, "Background"

    invoke-virtual {v11, v0}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v11, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    :cond_16
    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getMask()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_17
    const-string v0, "@drawable/watchface_custom_switch_focus_bg"

    :goto_8
    invoke-direct {v10, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->setBackgroundMask(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfiglist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFaceConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huami/watch/watchface/loader/WfzConstants;->parseItemType(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v2}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->addBackground(Ljava/lang/String;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    :goto_a
    add-int/lit8 v14, v18, 0x1

    move-object/from16 v12, v17

    goto/16 :goto_0

    :cond_1a
    iget-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDataWidgetPositionConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-direct {v10, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->notifyLoadCompleted(I)V

    :cond_1b
    iget-object v0, v10, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->close()V

    :cond_1c
    return-void
.end method

.method private notifyLoadCompleted(I)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadEventHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private parseBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseBitmap type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceConfigTemplate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviewsBmp:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const-string p1, "  reuse cache."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->readFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {p1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->closeInputStream(Ljava/io/InputStream;)Z

    if-eqz v3, :cond_6

    :goto_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviewsBmp:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/watchface/customBg/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBitmapFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v3, 0x0

    :cond_6
    :goto_2
    return-object v3
.end method

.method private parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseBg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchFaceConfigTemplate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "@drawable/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDrawableFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    const-string v0, "@customBg/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/watchface/customBg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "@assets/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_3
    const-string p1, "@wfz/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->readFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->closeInputStream(Ljava/io/InputStream;)Z

    if-eqz v0, :cond_5

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_1

    :cond_4
    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private recycleLoadedPreviews()V
    .locals 6

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "recycle "

    const-string v3, "WatchFaceConfigTemplate"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v4, "@drawable/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviewsBmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviewsBmp:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadedPreviewsBmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private setBackgroundMask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgroundMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgroundMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$502(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgroundMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$602(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setDefaultBackgroundIndex(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultBackgroundIndex:I

    return-void
.end method

.method private setDefaultGraduationIndex(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultGraduationIndex:I

    return-void
.end method

.method private setDefaultTimeHandIndex(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDefaultTimeHandIndex:I

    return-void
.end method

.method private setGraduationMask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduationMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduationMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$502(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduationMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$602(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setTimeDigitalMask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitalMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitalMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$502(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitalMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$602(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setTimeHandMask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHandMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHandMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$502(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHandMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->parseDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;->access$602(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateSavedBackgroundConfig()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundConfig:Ljava/lang/String;

    return-void
.end method

.method private updateSavedGraduationConfig()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Graduation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationConfig:Ljava/lang/String;

    return-void
.end method

.method private updateSavedTimeHandConfig()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TimeHand"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandConfig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackgroundMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgroundMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    return-object v0
.end method

.method public getBackgrounds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataWidgetPositionConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mDataWidgetPositionConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGraduationMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduationMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    return-object v0
.end method

.method public getGraduations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mGraduations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSavedBackgroundIndex()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedBackgroundIndex:I

    return v0
.end method

.method public getSavedGraduationIndex()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedGraduationIndex:I

    return v0
.end method

.method public getSavedTimeDigitalIndex()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeDigitalIndex:I

    return v0
.end method

.method public getSavedTimeHandIndex()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mSavedTimeHandIndex:I

    return v0
.end method

.method public getTimeDigitalMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitalMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    return-object v0
.end method

.method public getTimeDigitals()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeDigitals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeHandMask()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHandMask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$SelectMask;

    return-object v0
.end method

.method public getTimeHands()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mTimeHands:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WatchFaceConfigTemplate"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->destroyed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadWfzFileTask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadWfzFileTask:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$LoadWfzFileTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mLoadEventHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->recycleLoadedPreviews()V

    return-void
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;

    iget-object v0, v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$Background;->config:Ljava/lang/String;

    const-string v1, "@customBg/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->mBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->loadCurrentBg()V

    return-void
.end method
