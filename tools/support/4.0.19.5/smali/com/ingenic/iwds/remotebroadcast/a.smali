.class abstract Lcom/ingenic/iwds/remotebroadcast/a;
.super Ljava/lang/Object;
.source "RemoteBroadcastInfo.java"


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallerId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/a;->a:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/a;->b:I

    return v0
.end method
