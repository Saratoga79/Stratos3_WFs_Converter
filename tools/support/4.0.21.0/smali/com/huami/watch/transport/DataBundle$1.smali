.class final Lcom/huami/watch/transport/DataBundle$1;
.super Ljava/lang/Object;
.source "DataBundle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/DataBundle;
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
        "Lcom/huami/watch/transport/DataBundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/transport/DataBundle;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1555
    .local v0, "length":I
    if-gez v0, :cond_0

    .line 1556
    const/4 v1, 0x0

    .line 1557
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v1, p1, v0}, Lcom/huami/watch/transport/DataBundle;-><init>(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1550
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/DataBundle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/transport/DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huami/watch/transport/DataBundle;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1561
    new-array v0, p1, [Lcom/huami/watch/transport/DataBundle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1550
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/DataBundle$1;->newArray(I)[Lcom/huami/watch/transport/DataBundle;

    move-result-object v0

    return-object v0
.end method
