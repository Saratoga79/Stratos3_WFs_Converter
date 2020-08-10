.class public final Lcom/huami/watch/transport/HmApiClient$Builder;
.super Ljava/lang/Object;
.source "HmApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/HmApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mModule:Ljava/lang/String;

.field private mmConnectionCallbacks:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

.field private mmContext:Landroid/content/Context;

.field private mmOnConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v0}, Lcom/huami/watch/transport/HmApiClient$Builder;-><init>(Landroid/content/Context;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectedListener"    # Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mModule:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmConnectionCallbacks:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    .line 67
    iput-object p3, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmOnConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .line 68
    return-void
.end method


# virtual methods
.method public addConnectionCallbacks(Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;)Lcom/huami/watch/transport/HmApiClient$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmConnectionCallbacks:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    .line 81
    return-object p0
.end method

.method public addOnConnectionFailedListener(Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)Lcom/huami/watch/transport/HmApiClient$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmOnConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .line 96
    return-object p0
.end method

.method public build()Lcom/huami/watch/transport/HmApiClient;
    .locals 5

    .prologue
    .line 110
    new-instance v0, Lcom/huami/watch/transport/HmApiClient;

    iget-object v1, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mModule:Ljava/lang/String;

    iget-object v3, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmConnectionCallbacks:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mmOnConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huami/watch/transport/HmApiClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method

.method public setModuleName(Ljava/lang/String;)Lcom/huami/watch/transport/HmApiClient$Builder;
    .locals 0
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/huami/watch/transport/HmApiClient$Builder;->mModule:Ljava/lang/String;

    .line 101
    return-object p0
.end method
