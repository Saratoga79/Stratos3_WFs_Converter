.class public Lcom/huami/watch/transport/Wearable;
.super Ljava/lang/Object;
.source "Wearable.java"


# static fields
.field public static final ChannelApi:Lcom/huami/watch/transport/ChannelApi;

.field public static final DataApi:Lcom/huami/watch/transport/DataApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Lcom/huami/watch/transport/DataApi;->getInstance()Lcom/huami/watch/transport/DataApi;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/Wearable;->DataApi:Lcom/huami/watch/transport/DataApi;

    .line 10
    invoke-static {}, Lcom/huami/watch/transport/ChannelApi;->getInstance()Lcom/huami/watch/transport/ChannelApi;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/Wearable;->ChannelApi:Lcom/huami/watch/transport/ChannelApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
