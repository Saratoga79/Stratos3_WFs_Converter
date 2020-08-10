.class final Lcom/ingenic/iwds/remotedevice/RemotePackageStats$1;
.super Ljava/lang/Object;
.source "RemotePackageStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemotePackageStats;
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
        "Lcom/ingenic/iwds/remotedevice/RemotePackageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotedevice/RemotePackageStats;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemotePackageStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/remotedevice/RemotePackageStats;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 77
    new-array v0, p1, [Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemotePackageStats$1;->newArray(I)[Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    move-result-object v0

    return-object v0
.end method
