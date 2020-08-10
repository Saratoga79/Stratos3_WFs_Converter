.class public Lcom/huami/watch/transport/BLETransportDataItem;
.super Lcom/huami/watch/transport/TransportDataItem;
.source "BLETransportDataItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/transport/BLETransportDataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/huami/watch/transport/BLETransportDataItem$1;

    invoke-direct {v0}, Lcom/huami/watch/transport/BLETransportDataItem$1;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/BLETransportDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/TransportDataItem;-><init>(Landroid/os/Parcel;)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/BLETransportDataItem;->value:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/huami/watch/transport/TransportDataItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    iget-object v0, p0, Lcom/huami/watch/transport/BLETransportDataItem;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    return-void
.end method
