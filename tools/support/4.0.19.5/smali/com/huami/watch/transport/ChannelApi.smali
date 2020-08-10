.class public Lcom/huami/watch/transport/ChannelApi;
.super Ljava/lang/Object;
.source "ChannelApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/ChannelApi$1;,
        Lcom/huami/watch/transport/ChannelApi$TransportChannelListener;,
        Lcom/huami/watch/transport/ChannelApi$ChannelListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ChannelApi"

.field private static mChannelApi:Lcom/huami/watch/transport/ChannelApi;


# instance fields
.field private hasRegister:Z

.field private mChannelListener:Lcom/huami/watch/transport/ITransportChannelListener;

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huami/watch/transport/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/huami/watch/util/Config;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/ChannelApi;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Lcom/huami/watch/transport/ChannelApi$TransportChannelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/ChannelApi$TransportChannelListener;-><init>(Lcom/huami/watch/transport/ChannelApi;Lcom/huami/watch/transport/ChannelApi$1;)V

    iput-object v0, p0, Lcom/huami/watch/transport/ChannelApi;->mChannelListener:Lcom/huami/watch/transport/ITransportChannelListener;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/ChannelApi;->hasRegister:Z

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/ChannelApi;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/ChannelApi;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/huami/watch/transport/ChannelApi;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/huami/watch/transport/ChannelApi;->mChannelApi:Lcom/huami/watch/transport/ChannelApi;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/huami/watch/transport/ChannelApi;

    invoke-direct {v0}, Lcom/huami/watch/transport/ChannelApi;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/ChannelApi;->mChannelApi:Lcom/huami/watch/transport/ChannelApi;

    .line 30
    :cond_0
    sget-object v0, Lcom/huami/watch/transport/ChannelApi;->mChannelApi:Lcom/huami/watch/transport/ChannelApi;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/huami/watch/transport/HmApiClient;Lcom/huami/watch/transport/ChannelApi$ChannelListener;)Lcom/huami/watch/transport/Status;
    .locals 6
    .param p1, "client"    # Lcom/huami/watch/transport/HmApiClient;
    .param p2, "mListener"    # Lcom/huami/watch/transport/ChannelApi$ChannelListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    iget-boolean v1, p0, Lcom/huami/watch/transport/ChannelApi;->hasRegister:Z

    if-nez v1, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getManager()Lcom/huami/watch/transport/DataTransportManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/ChannelApi;->mChannelListener:Lcom/huami/watch/transport/ITransportChannelListener;

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/transport/DataTransportManager;->registerChannelListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iput-boolean v5, p0, Lcom/huami/watch/transport/ChannelApi;->hasRegister:Z

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-boolean v1, Lcom/huami/watch/transport/ChannelApi;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "ChannelApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelApi addListener for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Listenerlist size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_1
    new-instance v1, Lcom/huami/watch/transport/Status;

    invoke-direct {v1, v5}, Lcom/huami/watch/transport/Status;-><init>(I)V

    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ChannelApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register Channel listener for ["

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

    .line 45
    iput-boolean v4, p0, Lcom/huami/watch/transport/ChannelApi;->hasRegister:Z

    .line 46
    new-instance v1, Lcom/huami/watch/transport/Status;

    invoke-direct {v1, v4}, Lcom/huami/watch/transport/Status;-><init>(I)V

    goto :goto_0
.end method

.method public removeListener(Lcom/huami/watch/transport/HmApiClient;Lcom/huami/watch/transport/ChannelApi$ChannelListener;)V
    .locals 5
    .param p1, "client"    # Lcom/huami/watch/transport/HmApiClient;
    .param p2, "mListener"    # Lcom/huami/watch/transport/ChannelApi$ChannelListener;

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v1, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    sget-boolean v1, Lcom/huami/watch/transport/ChannelApi;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "ChannelApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelApi removeListener for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Listenerlist size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/ChannelApi;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getManager()Lcom/huami/watch/transport/DataTransportManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/HmApiClient;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/DataTransportManager;->unregisterChannelListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iput-boolean v4, p0, Lcom/huami/watch/transport/ChannelApi;->hasRegister:Z

    .line 78
    :cond_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ChannelApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register Channel listener for ["

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
