.class public Lcom/huami/watch/watchface/util/WatchFaceConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;,
        Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;,
        Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;
    }
.end annotation


# instance fields
.field private INTERNAL_PATH:Ljava/lang/String;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgPathSlpt:Ljava/lang/String;

.field private mBgType:I

.field private mContext:Landroid/content/Context;

.field private mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

.field private mGraduation:Landroid/graphics/drawable/Drawable;

.field private mGraduationSlptPath:Ljava/lang/String;

.field private mGraduationType:I

.field private mStatusBarPosY:I

.field private mTimeDigital:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

.field private mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

.field private mTimeHandHourSlptPath:Ljava/lang/String;

.field private mTimeHandMinuteSlptPath:Ljava/lang/String;

.field private mTimeHandType:I

.field private mWatchFaceName:Ljava/lang/String;

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgType:I

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandType:I

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduationType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mStatusBarPosY:I

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/util/WatchFaceConfig;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/util/WatchFaceConfig;)Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/util/WatchFaceConfig;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getBitmapFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    :try_start_0
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "WatchFaceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    const-string p1, "WatchFaceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "getBitmapFromResName: Unable to find drawable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDrawableFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "WatchFaceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    const-string p1, "WatchFaceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "getDrawableFromResName: Unable to find drawable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-direct {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;-><init>()V

    iput-object v0, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->INTERNAL_PATH:Ljava/lang/String;

    iput-object v1, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mWatchFaceName:Ljava/lang/String;

    const-string v3, "WatchFaceConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WatchFaceConfig watchfaceName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "external_watchface"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/.watchface/current/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/huami/watch/watchface/util/WatchFaceConfig$1;

    invoke-direct {v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$1;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WatchFaceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current wfz: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->getWatchFaceExternalLoader(Ljava/lang/String;)Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    move-result-object v3

    iput-object v3, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    iget-object v3, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {v3}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->parseWatchFace()Lcom/huami/watch/watchface/model/WatchFaceModule;

    move-result-object v3

    invoke-static {v1}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getWatchFaceSave(Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceSave;

    move-result-object v1

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/huami/watch/watchface/model/WatchFaceModule;->getWatchFaceItemList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    move v6, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huami/watch/watchface/loader/WfzConstants;->parseItemType(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getY()I

    move-result v7

    iput v7, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mStatusBarPosY:I

    const-string v7, "WatchFaceConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseStatusBarPosY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mStatusBarPosY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_1
    if-eqz v1, :cond_1

    const-string v8, "TimeDigital"

    invoke-virtual {v1, v8}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "TimeDigital"

    invoke-virtual {v1, v8, v5}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseTimeDigital(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v8, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeDigital:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    if-nez v8, :cond_6

    invoke-direct {v2, v7}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseTimeDigital(Lcom/huami/watch/watchface/model/WatchFaceModuleItem;)V

    goto/16 :goto_3

    :pswitch_2
    if-eqz v1, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataWidget"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataWidget"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDataWidget(Ljava/lang/String;)Z

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    if-nez v8, :cond_6

    new-instance v8, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getId()I

    move-result v10

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getDataType()I

    move-result v11

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getX()I

    move-result v12

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getY()I

    move-result v13

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_3
    if-eqz v1, :cond_3

    const-string v8, "TimeHand"

    invoke-virtual {v1, v8}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "TimeHand"

    invoke-virtual {v1, v8, v5}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseTimeHand(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v8, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseTimeHand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    if-eqz v1, :cond_4

    const-string v8, "Graduation"

    invoke-virtual {v1, v8}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "Graduation"

    invoke-virtual {v1, v8, v5}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseGraduation(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object v8, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseGraduation(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    if-eqz v1, :cond_5

    const-string v8, "Background"

    invoke-virtual {v1, v8}, Lcom/huami/watch/watchface/util/WatchFaceSave;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "Background"

    invoke-virtual {v1, v8, v5}, Lcom/huami/watch/watchface/util/WatchFaceSave;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseBg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    iget-object v8, v2, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getConfig()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseBg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    const-string v8, "WatchFaceConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not support "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "Background"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Background"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseBg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    const-string v3, "TimeHand"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "TimeHand"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseTimeHand(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    const-string v3, "Graduation"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "Graduation"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseGraduation(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    :goto_4
    const/16 v0, 0xa

    if-ge v4, v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataWidget"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataWidget"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDataWidget(Ljava/lang/String;)Z

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseBg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "WatchFaceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseBg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "@drawable/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "@drawable/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDrawableFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "guard/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgPathSlpt:Ljava/lang/String;

    iput v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgType:I

    const-string p1, "WatchFaceConfig"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BgType: IMG_TYPE_DRAWABLE SlptBgPath: "

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgPathSlpt:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "@customBg/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "@customBg/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/watchface/customBg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/watchface/customSlptBg/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgPathSlpt:Ljava/lang/String;

    const/4 p1, 0x4

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgType:I

    const-string p1, "WatchFaceConfig"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BgType: IMG_TYPE_FILE  BgPathSlpt: "

    goto :goto_0

    :cond_1
    const-string p1, "@wfz/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "@wfz/"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    const/4 p2, 0x6

    invoke-direct {p0, p2, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v1

    const-string p1, "8c/"

    invoke-virtual {v2, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgPathSlpt:Ljava/lang/String;

    iput p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgType:I

    return-void

    :cond_2
    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    iput p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgType:I

    :cond_3
    return-void
.end method

.method private parseBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "WatchFaceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseBitmap type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBitmapFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->readFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->closeInputStream(Ljava/io/InputStream;)Z

    move-object p1, p2

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/watchface/customBg/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseDataWidget(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-direct {v0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchFaceConfig"

    const-string v2, "parseDataWidget success: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "WatchFaceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDrawable type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDrawableFromResName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->readFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->closeInputStream(Ljava/io/InputStream;)Z

    if-eqz p2, :cond_2

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/watchface/customBg/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    move-object p1, p2

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseGraduation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string p1, "@assets/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "@assets/"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/graduation.png"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/8c/graduation.png"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduationSlptPath:Ljava/lang/String;

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduationType:I

    return-void

    :cond_0
    const-string p1, "@drawable/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "@drawable/"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iput p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduationType:I

    return-void

    :cond_1
    const-string p1, "@wfz/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "@wfz/"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/graduation.png"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseTimeDigital(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    :try_start_0
    new-instance p1, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    invoke-direct {p1, p0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->access$500(Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchFaceConfig"

    const-string v2, "parseTimeDigital success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeDigital:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "WatchFaceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTimeDigital failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private parseTimeDigital(Lcom/huami/watch/watchface/model/WatchFaceModuleItem;)V
    .locals 11

    new-instance v10, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getModel()I

    move-result v2

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getY()I

    move-result v4

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getFontConfig()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getGap()I

    move-result v8

    invoke-virtual {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->getColor()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;IIIIILjava/lang/String;ILjava/lang/String;)V

    iput-object v10, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeDigital:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeDigital:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    invoke-static {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->access$500(Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;)V

    return-void
.end method

.method private parseTimeHand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string p1, "@assets/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "@assets/"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "hour.png"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "minute.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "seconds.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    invoke-direct {v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;-><init>()V

    iput-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iput-object p2, v3, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mHours:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iput-object v1, p2, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mMinute:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iput-object v2, p2, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mSeconds:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandType:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/8c/hour_%d.png.color_map"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandHourSlptPath:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/8c/minute_%d.png.color_map"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandMinuteSlptPath:Ljava/lang/String;

    return-void

    :cond_1
    const-string p1, "@wfz/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "@wfz/"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "hour.png"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "minute.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "seconds.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    invoke-direct {v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;-><init>()V

    iput-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iput-object p2, v3, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mHours:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iput-object v1, p2, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mMinute:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    iput-object v2, p2, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mSeconds:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandType:I

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/8c/hour.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->exists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/8c/hour.png"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandHourSlptPath:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/8c/hour_0.png.color_map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->exists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/8c/hour_%d.png.color_map"

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/8c/minute.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->exists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/8c/minute.png"

    goto/16 :goto_1

    :cond_4
    iget-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/8c/minute_0.png.color_map"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->exists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBgPathSlpt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgPathSlpt:Ljava/lang/String;

    return-object v0
.end method

.method public getBgType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mBgType:I

    return v0
.end method

.method public getDataWidgets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGraduation()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduation:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGraduationPathSlpt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduationSlptPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGraduationType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mGraduationType:I

    return v0
.end method

.method public getHourPathSlpt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandHourSlptPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMinutePathSlpt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandMinuteSlptPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarPosY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mStatusBarPosY:I

    return v0
.end method

.method public getTimeDigital()Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeDigital:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    return-object v0
.end method

.method public getTimeHand()Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHand:Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    return-object v0
.end method

.method public getTimeHandType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mTimeHandType:I

    return v0
.end method

.method public parseFile(ILjava/lang/String;)[B
    .locals 3

    const-string v0, "WatchFaceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFile type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig;->mExternalLoader:Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->readFile(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
