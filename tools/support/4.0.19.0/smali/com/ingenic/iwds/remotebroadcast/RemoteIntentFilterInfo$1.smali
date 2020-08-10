.class final Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo$1;
.super Ljava/lang/Object;
.source "RemoteBroadcastInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;
    .locals 1

    .prologue
    .line 100
    new-array v0, p1, [Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo$1;->a(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo$1;->a(I)[Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    move-result-object v0

    return-object v0
.end method
