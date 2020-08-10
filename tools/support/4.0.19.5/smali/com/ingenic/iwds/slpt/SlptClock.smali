.class public Lcom/ingenic/iwds/slpt/SlptClock;
.super Ljava/lang/Object;
.source "SlptClock.java"


# static fields
.field public static CLOCK_INDEX_0:I = 0x0

.field public static CLOCK_INDEX_1:I = 0x0

.field public static CLOCK_INDEX_2:I = 0x0

.field public static CLOCK_INDEX_3:I = 0x0

.field public static CLOCK_INDEX_4:I = 0x0

.field public static CLOCK_INDEX_OVERFOLLOW:I = 0x0

.field public static CLOCK_INDEX_SHOW:I = 0x0

.field public static CLOCK_SLPT_MODE_DISPLAY_OFF:I = 0x0

.field public static CLOCK_SLPT_MODE_NORMAL:I = 0x0

.field public static CLOCK_SLPT_MODE_WATCH:I = 0x0

.field public static final HOUR_12:I = 0x0

.field public static final HOUR_24:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SLPT-Clock"

.field private static clock_last_heartrate:Ljava/lang/String;

.field private static clock_period_path:Ljava/lang/String;

.field private static clock_safe_heartrate:Ljava/lang/String;

.field private static clock_target_sport_step:Ljava/lang/String;

.field private static clock_today_sport_distance_f:Ljava/lang/String;

.field private static clock_today_sport_distance_l:Ljava/lang/String;

.field private static clock_total_sport_distance_f:Ljava/lang/String;

.field private static clock_total_sport_distance_l:Ljava/lang/String;

.field private static nativeIsInitialized:Z


# instance fields
.field prePictureContainer:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

.field rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    sput v1, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_0:I

    .line 37
    sput v2, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_1:I

    .line 38
    sput v3, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_2:I

    .line 39
    const/4 v0, 0x3

    sput v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_3:I

    .line 40
    const/4 v0, 0x4

    sput v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_4:I

    .line 41
    const/16 v0, 0xf

    sput v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_OVERFOLLOW:I

    .line 42
    const/16 v0, 0x3e7

    sput v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_SHOW:I

    .line 44
    sput v1, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_NORMAL:I

    .line 45
    sput v2, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_DISPLAY_OFF:I

    .line 46
    sput v3, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_WATCH:I

    .line 51
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-period/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_period_path:Ljava/lang/String;

    .line 52
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-target-sport-step/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_target_sport_step:Ljava/lang/String;

    .line 53
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-today-sport-distance-f/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_today_sport_distance_f:Ljava/lang/String;

    .line 54
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-today-sport-distance-l/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_today_sport_distance_l:Ljava/lang/String;

    .line 55
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-total-sport-distance-f/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_total_sport_distance_f:Ljava/lang/String;

    .line 56
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-total-sport-distance-l/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_total_sport_distance_l:Ljava/lang/String;

    .line 57
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-last-heartrate/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_last_heartrate:Ljava/lang/String;

    .line 58
    const-string v0, "/sys/slpt/apps/slpt-app/res/clock-safe-heartrate/data"

    sput-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_safe_heartrate:Ljava/lang/String;

    .line 60
    sput-boolean v1, Lcom/ingenic/iwds/slpt/SlptClock;->nativeIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClock;->prePictureContainer:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClock;->rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V
    .locals 1
    .param p1, "rootView"    # Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClock;->prePictureContainer:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

    .line 70
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setRootView(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    .line 71
    return-void
.end method

.method public static clearAllClock()V
    .locals 0

    .prologue
    .line 313
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->clearAllSviewPicture()V

    .line 314
    return-void
.end method

.method public static native clearAllSviewPicture()V
.end method

.method public static native disableLowBattery()I
.end method

.method public static native disableSlpt()I
.end method

.method public static native disableSportMode()I
.end method

.method public static native enableLowBattery()I
.end method

.method public static native enableSlpt()I
.end method

.method public static native enableSportMode()I
.end method

.method public static native initSlpt()I
.end method

.method public static native initSview(J)V
.end method

.method public static native initSview([B)V
.end method

.method public static native requestSlptDisplayPause()V
.end method

.method public static native requestSlptDisplayResume()V
.end method

.method public static selectClockIndex(I)V
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 321
    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_SHOW:I

    if-ne p0, v0, :cond_0

    .line 322
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/SlptClock;->selectRootSview(I)V

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v1, "SLPT-Clock"

    if-ltz p0, :cond_1

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_INDEX_OVERFOLLOW:I

    if-lt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clock index is overfollow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 327
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/SlptClock;->selectRootSview(I)V

    goto :goto_0

    .line 325
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static native selectRootSview(I)V
.end method

.method public static setClockPeriod(I)V
    .locals 1
    .param p0, "period"    # I

    .prologue
    .line 338
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_period_path:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 339
    return-void
.end method

.method public static native setClockSlptMode(I)V
.end method

.method public static native setHeartrate(I)V
.end method

.method public static native setHourFormat(I)V
.end method

.method public static native setKeyWakeupStatus(I)V
.end method

.method public static setLastHeartrate(I)V
    .locals 1
    .param p0, "heart"    # I

    .prologue
    .line 383
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_last_heartrate:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 384
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/SlptClock;->setHeartrate(I)V

    .line 385
    return-void
.end method

.method public static native setLongUpKeyStatus(I)V
.end method

.method public static native setMeasurement(I)V
.end method

.method public static setSafeHeartrate(I)V
    .locals 1
    .param p0, "heart"    # I

    .prologue
    .line 394
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_safe_heartrate:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 395
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/SlptClock;->setsafeHeartrate(I)V

    .line 396
    return-void
.end method

.method public static native setSportStopTime(J)V
.end method

.method public static setTargetSportStep(I)V
    .locals 1
    .param p0, "step"    # I

    .prologue
    .line 348
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_target_sport_step:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 349
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/SlptClock;->setTargetStep(I)V

    .line 350
    return-void
.end method

.method public static native setTargetStep(I)V
.end method

.method public static native setTodayDis(F)V
.end method

.method public static setTodayDistance(F)V
    .locals 2
    .param p0, "distance"    # F

    .prologue
    .line 359
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_today_sport_distance_f:Ljava/lang/String;

    float-to-int v1, p0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 360
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_today_sport_distance_l:Ljava/lang/String;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 361
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/SlptClock;->setTodayDis(F)V

    .line 362
    return-void
.end method

.method public static native setTotalDis(F)V
.end method

.method public static setTotalDistance(F)V
    .locals 2
    .param p0, "distance"    # F

    .prologue
    .line 371
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_total_sport_distance_f:Ljava/lang/String;

    float-to-int v1, p0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 372
    sget-object v0, Lcom/ingenic/iwds/slpt/SlptClock;->clock_total_sport_distance_l:Ljava/lang/String;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p0

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFileInt(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 373
    invoke-static {p0}, Lcom/ingenic/iwds/slpt/SlptClock;->setTotalDis(F)V

    .line 374
    return-void
.end method

.method public static native setWakeUpVibratorStatus(I)V
.end method

.method public static native setsafeHeartrate(I)V
.end method

.method public static native wakeLock()V
.end method

.method public static native wakeUnlock()V
.end method


# virtual methods
.method public addPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClock;->prePictureContainer:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->add(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    .line 248
    return-void
.end method

.method public getRootView()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClock;->rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    return-object v0
.end method

.method public setRootView(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V
    .locals 3
    .param p1, "rootView"    # Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    .prologue
    .line 81
    const-string v1, "SLPT-Clock"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "rootView can not be null!"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/SlptClock;->rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToSlpt()Z
    .locals 6

    .prologue
    .line 255
    sget-boolean v3, Lcom/ingenic/iwds/slpt/SlptClock;->nativeIsInitialized:Z

    if-nez v3, :cond_0

    .line 256
    const/4 v3, 0x0

    .line 279
    :goto_0
    return v3

    .line 258
    :cond_0
    new-instance v2, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;-><init>()V

    .line 259
    .local v2, "writer":Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;-><init>()V

    .line 261
    .local v0, "container":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;-><init>()V

    .line 262
    .local v1, "param":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    const v3, 0xffffff

    iput v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    .line 263
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/SlptClock;->rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V

    .line 265
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->requestSlptDisplayPause()V

    .line 267
    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writeToSlpt()V

    .line 269
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/SlptClock;->prePictureContainer:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

    invoke-virtual {v3}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->writeToSlpt()V

    .line 271
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/SlptClock;->rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 272
    invoke-virtual {v2}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->getJniPrivate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ingenic/iwds/slpt/SlptClock;->initSview(J)V

    .line 274
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->requestSlptDisplayResume()V

    .line 276
    invoke-virtual {v2}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->recycle()V

    .line 277
    const/4 v0, 0x0

    .line 279
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public writeToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;)Z
    .locals 5
    .param p1, "mClockClient"    # Lcom/ingenic/iwds/slpt/SlptClockClient;

    .prologue
    .line 286
    new-instance v3, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;-><init>()V

    .line 287
    .local v3, "writer":Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;-><init>()V

    .line 288
    .local v1, "container":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;-><init>()V

    .line 290
    .local v2, "param":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    const v4, 0xffffff

    iput v4, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    .line 291
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/SlptClock;->rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    invoke-virtual {v4, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V

    .line 292
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writeToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    .line 294
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/SlptClock;->prePictureContainer:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;

    invoke-virtual {v4, p1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->writeToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;)Z

    .line 297
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/SlptClock;->rootView:Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 298
    invoke-virtual {v3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->getSize()I

    move-result v4

    new-array v0, v4, [B

    .line 299
    .local v0, "buffer":[B
    invoke-virtual {v3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->getSize()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->setRawBytes([BI)V

    .line 300
    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->writeSview([B)Z

    .line 301
    invoke-virtual {v3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->recycle()V

    .line 302
    const/4 v1, 0x0

    .line 303
    const/4 v0, 0x0

    .line 304
    const/4 v3, 0x0

    .line 306
    const/4 v4, 0x1

    return v4
.end method
