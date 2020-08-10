.class public Lcom/huami/watch/watchface/WatchfaceApplication;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/WatchfaceApplication$DataExchange;
    }
.end annotation


# instance fields
.field private mDataExchanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/watchface/WatchfaceApplication$DataExchange;",
            ">;"
        }
    .end annotation
.end field

.field private needWatchFace:Z

.field private slptThemes:I

.field private watchFaceLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->slptThemes:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->needWatchFace:Z

    iput-boolean v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->watchFaceLocked:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->mDataExchanges:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getNeedWatchFace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->needWatchFace:Z

    return v0
.end method

.method public getSlptThemesDir(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "en/"

    goto :goto_0

    :cond_0
    const-string p1, "zh/"

    :goto_0
    iget v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->slptThemes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sport/4r6/white/"

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sport/4r6/black/"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSlptThems()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->slptThemes:I

    return v0
.end method

.method public getWatchFaceLockStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->watchFaceLocked:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/huami/watch/watchface/util/PointUtils;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "17"

    invoke-static {p0, v1, v0}, Lcom/huami/watch/wearubc/UbcInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/WatchfaceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/TypefaceManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/huami/watch/watchface/CrashHandler;->getInstance()Lcom/huami/watch/watchface/CrashHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/WatchfaceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/CrashHandler;->init(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/WatchfaceApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/WatchfaceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->cleanSportItemOrder()V

    return-void
.end method

.method public registerDataExchange(Ljava/lang/String;Lcom/huami/watch/watchface/WatchfaceApplication$DataExchange;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->mDataExchanges:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->mDataExchanges:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/WatchfaceApplication$DataExchange;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Lcom/huami/watch/watchface/WatchfaceApplication$DataExchange;->requestData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public sendData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->mDataExchanges:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/WatchfaceApplication$DataExchange;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Lcom/huami/watch/watchface/WatchfaceApplication$DataExchange;->onDataReceive(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setNeedWatchFace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->needWatchFace:Z

    return-void
.end method

.method public setSlptThemes(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->slptThemes:I

    return-void
.end method

.method public setWatchFaceLockStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->watchFaceLocked:Z

    return-void
.end method

.method public unregisterDataExchange(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/WatchfaceApplication;->mDataExchanges:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
