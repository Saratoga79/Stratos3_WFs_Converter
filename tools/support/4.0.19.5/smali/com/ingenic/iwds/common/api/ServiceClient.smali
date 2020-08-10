.class public Lcom/ingenic/iwds/common/api/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;,
        Lcom/ingenic/iwds/common/api/ServiceClient$a;,
        Lcom/ingenic/iwds/common/api/ServiceClient$b;
    }
.end annotation


# static fields
.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ingenic/iwds/common/api/ServiceClient$b;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

.field private d:Lcom/ingenic/iwds/common/api/ServiceClient$a;

.field private e:Lcom/ingenic/iwds/common/api/ServiceManagerContext;

.field private f:Lcom/ingenic/iwds/common/api/ServiceClient$b;

.field private g:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.ingenic.watchmanager"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.ingenic.iwds.device"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.ingenic.iwds.phone"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.ingenic.watchconnector"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.huami.watch.launcher"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.huami.watch.phonemanager"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.huami.mobile.launcher"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.huami.watch.hmwatchmanager"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.huami.watch.huamiwatchmanager"

    aput-object v3, v1, v2

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ingenic/iwds/common/api/ServiceClient;->i:Ljava/util/List;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "callbacks"    # Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Context is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 394
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    const-string v3, "Service name is null or empty."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 397
    if-nez p3, :cond_4

    move v0, v1

    :goto_2
    const-string v3, "Callbacks is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->a:Landroid/content/Context;

    .line 401
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    const-string v3, "Application context is null"

    .line 402
    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 404
    iput-object p3, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->c:Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    .line 405
    new-instance v0, Lcom/ingenic/iwds/common/api/ServiceClient$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/ingenic/iwds/common/api/ServiceClient$a;-><init>(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ServiceClient$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->d:Lcom/ingenic/iwds/common/api/ServiceClient$a;

    .line 406
    iput-object p2, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->b:Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/ingenic/iwds/common/api/ServiceClient;->h:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->a(Landroid/content/Context;)V

    .line 411
    :cond_1
    sget-object v0, Lcom/ingenic/iwds/common/api/ServiceClient;->h:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/common/api/ServiceClient$b;

    iput-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->f:Lcom/ingenic/iwds/common/api/ServiceClient$b;

    .line 413
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->f:Lcom/ingenic/iwds/common/api/ServiceClient$b;

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->f:Lcom/ingenic/iwds/common/api/ServiceClient$b;

    iget-object v3, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->a:Landroid/content/Context;

    .line 417
    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/common/api/ServiceClient$b;->a(Landroid/content/Context;)Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->e:Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    .line 419
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->f:Lcom/ingenic/iwds/common/api/ServiceClient$b;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient$b;->b()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->g:Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->g:Landroid/content/Intent;

    if-nez v0, :cond_7

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find service bind intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 423
    return-void

    :cond_2
    move v0, v2

    .line 392
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 394
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 397
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 401
    goto :goto_3

    :cond_6
    move v0, v2

    .line 413
    goto :goto_4

    :cond_7
    move v1, v2

    .line 421
    goto :goto_5
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 132
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 111
    sget-object v4, Lcom/ingenic/iwds/common/api/ServiceClient;->i:Ljava/util/List;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 112
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 115
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 120
    :goto_1
    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/ingenic/iwds/common/api/ServiceClient;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->g:Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/common/api/ServiceClient;->h:Ljava/util/HashMap;

    .line 139
    sget-object v0, Lcom/ingenic/iwds/common/api/ServiceClient;->h:Ljava/util/HashMap;

    const-string v1, "service_connection"

    new-instance v2, Lcom/ingenic/iwds/common/api/ServiceClient$1;

    invoke-direct {v2, p0}, Lcom/ingenic/iwds/common/api/ServiceClient$1;-><init>(Lcom/ingenic/iwds/common/api/ServiceClient;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/ingenic/iwds/common/api/ServiceClient;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 371
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/ingenic/iwds/common/api/ServiceClient;->h:Ljava/util/HashMap;

    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/common/api/ServiceClient$b;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient$b;->a()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-direct {p0, v2, v3}, Lcom/ingenic/iwds/common/api/ServiceClient;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/common/api/ServiceClient$b;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ingenic/iwds/common/api/ServiceClient;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/ingenic/iwds/common/api/ServiceClient;)Lcom/ingenic/iwds/common/api/ServiceManagerContext;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->e:Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    return-object v0
.end method

.method static synthetic d(Lcom/ingenic/iwds/common/api/ServiceClient;)Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->c:Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->d:Lcom/ingenic/iwds/common/api/ServiceClient$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b()V

    .line 615
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->d:Lcom/ingenic/iwds/common/api/ServiceClient$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c()V

    .line 622
    return-void
.end method

.method public getServiceManagerContext()Lcom/ingenic/iwds/common/api/ServiceManagerContext;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->e:Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient;->d:Lcom/ingenic/iwds/common/api/ServiceClient$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
