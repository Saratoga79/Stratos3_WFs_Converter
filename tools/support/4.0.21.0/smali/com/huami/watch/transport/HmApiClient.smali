.class public Lcom/huami/watch/transport/HmApiClient;
.super Ljava/lang/Object;
.source "HmApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;,
        Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;,
        Lcom/huami/watch/transport/HmApiClient$Builder;
    }
.end annotation


# instance fields
.field private mConnectionCallbacks:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

.field private mContext:Landroid/content/Context;

.field private final mDataTransportManager:Lcom/huami/watch/transport/DataTransportManager;

.field private mModule:Ljava/lang/String;

.field private mOnConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mModule"    # Ljava/lang/String;
    .param p3, "mConnectionCallbacks"    # Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;
    .param p4, "mOnConnectionFailedListener"    # Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/huami/watch/transport/HmApiClient;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/huami/watch/transport/HmApiClient;->mModule:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/huami/watch/transport/HmApiClient;->mConnectionCallbacks:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    .line 22
    iput-object p4, p0, Lcom/huami/watch/transport/HmApiClient;->mOnConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .line 24
    invoke-static {p1, p2, p3, p4}, Lcom/huami/watch/transport/DataTransportManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)Lcom/huami/watch/transport/DataTransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/HmApiClient;->mDataTransportManager:Lcom/huami/watch/transport/DataTransportManager;

    .line 25
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huami/watch/transport/HmApiClient;->mDataTransportManager:Lcom/huami/watch/transport/DataTransportManager;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataTransportManager;->connect()V

    .line 119
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/huami/watch/transport/HmApiClient;->mDataTransportManager:Lcom/huami/watch/transport/DataTransportManager;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataTransportManager;->disconnect()V

    .line 124
    return-void
.end method

.method public getManager()Lcom/huami/watch/transport/DataTransportManager;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huami/watch/transport/HmApiClient;->mDataTransportManager:Lcom/huami/watch/transport/DataTransportManager;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/huami/watch/transport/HmApiClient;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/huami/watch/transport/HmApiClient;->mDataTransportManager:Lcom/huami/watch/transport/DataTransportManager;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataTransportManager;->isConnected()Z

    move-result v0

    return v0
.end method
