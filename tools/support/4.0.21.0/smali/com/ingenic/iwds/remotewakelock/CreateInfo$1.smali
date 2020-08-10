.class final Lcom/ingenic/iwds/remotewakelock/CreateInfo$1;
.super Ljava/lang/Object;
.source "RemoteWakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/CreateInfo;
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
        "Lcom/ingenic/iwds/remotewakelock/CreateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotewakelock/CreateInfo;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ingenic/iwds/remotewakelock/CreateInfo;
    .locals 1

    .prologue
    .line 85
    new-array v0, p1, [Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo$1;->a(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo$1;->a(I)[Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    move-result-object v0

    return-object v0
.end method
