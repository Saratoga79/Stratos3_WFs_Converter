.class public Lcom/huami/watch/transport/DataApi;
.super Ljava/lang/Object;
.source "DataApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/DataApi$1;,
        Lcom/huami/watch/transport/DataApi$TransportDataListener;,
        Lcom/huami/watch/transport/DataApi$CallbackListener;,
        Lcom/huami/watch/transport/DataApi$DataListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DataApi"

.field private static mDataApi:Lcom/huami/watch/transport/DataApi;


# instance fields
.field private hasRegister:Z

.field private mDataListener:Lcom/huami/watch/transport/ITransportDataListener;

.field private mListenerList:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/transport/DataApi$DataListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/huami/watch/util/Config;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/DataApi;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/DataApi;->hasRegister:Z

    .line 32
    new-instance v0, Lcom/huami/watch/transport/DataApi$TransportDataListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/DataApi$TransportDataListener;-><init>(Lcom/huami/watch/transport/DataApi;Lcom/huami/watch/transport/DataApi$1;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataApi;->mDataListener:Lcom/huami/watch/transport/ITransportDataListener;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/DataApi;)Landroid/support/v4/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataApi;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public static getInstance()Lcom/huami/watch/transport/DataApi;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/huami/watch/transport/DataApi;->mDataApi:Lcom/huami/watch/transport/DataApi;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/huami/watch/transport/DataApi;

    invoke-direct {v0}, Lcom/huami/watch/transport/DataApi;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/DataApi;->mDataApi:Lcom/huami/watch/transport/DataApi;

    .line 28
    :cond_0
    sget-object v0, Lcom/huami/watch/transport/DataApi;->mDataApi:Lcom/huami/watch/transport/DataApi;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/huami/watch/transport/HmApiClient;Lcom/huami/watch/transport/DataApi$DataListener;)Lcom/huami/watch/transport/Status;
    .locals 6
    .param p1, "client"    # Lcom/huami/watch/transport/HmApiClient;
    .param p2, "mListener"    # Lcom/huami/watch/transport/DataApi$DataListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    iget-boolean v1, p0, Lcom/huami/watch/transport/DataApi;->hasRegister:Z

    if-nez v1, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getManager()Lcom/huami/watch/transport/DataTransportManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataApi;->mDataListener:Lcom/huami/watch/transport/ITransportDataListener;

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/transport/DataTransportManager;->registerDataListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iput-boolean v5, p0, Lcom/huami/watch/transport/DataApi;->hasRegister:Z

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-boolean v1, Lcom/huami/watch/transport/DataApi;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "DataApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataApi addListener for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Listenerlist size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_1
    new-instance v1, Lcom/huami/watch/transport/Status;

    invoke-direct {v1, v5}, Lcom/huami/watch/transport/Status;-><init>(I)V

    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register Data listener for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-boolean v4, p0, Lcom/huami/watch/transport/DataApi;->hasRegister:Z

    .line 44
    new-instance v1, Lcom/huami/watch/transport/Status;

    invoke-direct {v1, v4}, Lcom/huami/watch/transport/Status;-><init>(I)V

    goto :goto_0
.end method

.method public removeListener(Lcom/huami/watch/transport/HmApiClient;Lcom/huami/watch/transport/DataApi$DataListener;)V
    .locals 5
    .param p1, "client"    # Lcom/huami/watch/transport/HmApiClient;
    .param p2, "mListener"    # Lcom/huami/watch/transport/DataApi$DataListener;

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v1, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-boolean v1, Lcom/huami/watch/transport/DataApi;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "DataApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataApi removeListener for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Listenerlist size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/DataApi;->mListenerList:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getManager()Lcom/huami/watch/transport/DataTransportManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/DataTransportManager;->unregisterDataListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iput-boolean v4, p0, Lcom/huami/watch/transport/DataApi;->hasRegister:Z

    .line 77
    :cond_1
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register Data listener for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendData(Lcom/huami/watch/transport/HmApiClient;Lcom/huami/watch/transport/TransportDataItem;Lcom/huami/watch/transport/DataApi$CallbackListener;)V
    .locals 4
    .param p1, "client"    # Lcom/huami/watch/transport/HmApiClient;
    .param p2, "item"    # Lcom/huami/watch/transport/TransportDataItem;
    .param p3, "mCallback"    # Lcom/huami/watch/transport/DataApi$CallbackListener;

    .prologue
    .line 102
    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getManager()Lcom/huami/watch/transport/DataTransportManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/huami/watch/transport/TransportDataItem;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lcom/huami/watch/transport/DataTransportManager;->registerDataCallback(JLcom/huami/watch/transport/DataApi$CallbackListener;)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getManager()Lcom/huami/watch/transport/DataTransportManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huami/watch/transport/DataTransportManager;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V

    .line 106
    return-void
.end method
