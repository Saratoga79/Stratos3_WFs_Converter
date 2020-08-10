.class final Lcom/ingenic/iwds/smartsense/RemoteAuthInfo$1;
.super Ljava/lang/Object;
.source "RemoteAuthInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;
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
        "Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    .line 79
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 84
    new-array v0, p1, [Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo$1;->newArray(I)[Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;

    move-result-object v0

    return-object v0
.end method
