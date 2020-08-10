.class public Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;
.super Ljava/lang/Object;
.source "ParcelableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall(Landroid/os/Parcelable;)[B
    .locals 2
    .param p0, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 44
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    return-object v1
.end method

.method public static unmarshall([B)Landroid/os/Parcel;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 62
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;->unmarshall([B)Landroid/os/Parcel;

    move-result-object v0

    .line 81
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 84
    return-object v1
.end method
