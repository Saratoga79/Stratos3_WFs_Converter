.class final Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo$1;
.super Ljava/lang/Object;
.source "LDInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;
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
        "Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;

    invoke-direct {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    new-array v0, p1, [Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo$1;->newArray(I)[Lcom/huami/watch/transport/httpsupport/transporter/file/LDInfo;

    move-result-object v0

    return-object v0
.end method
