.class final Lcom/ingenic/iwds/remotewakelock/CMDInfo$1;
.super Ljava/lang/Object;
.source "RemoteWakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/CMDInfo;
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
        "Lcom/ingenic/iwds/remotewakelock/CMDInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotewakelock/CMDInfo;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ingenic/iwds/remotewakelock/CMDInfo;
    .locals 1

    .prologue
    .line 194
    new-array v0, p1, [Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo$1;->a(Landroid/os/Parcel;)Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo$1;->a(I)[Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    move-result-object v0

    return-object v0
.end method
