.class public Lcom/huami/watch/transport/DataTransportResult;
.super Ljava/lang/Object;
.source "DataTransportResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/transport/DataTransportResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataItem:Lcom/huami/watch/transport/TransportDataItem;

.field private resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/huami/watch/transport/DataTransportResult$1;

    invoke-direct {v0}, Lcom/huami/watch/transport/DataTransportResult$1;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/DataTransportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lcom/huami/watch/transport/TransportDataItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/TransportDataItem;

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportResult;->dataItem:Lcom/huami/watch/transport/TransportDataItem;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/transport/DataTransportResult;->resultCode:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    iget v1, p0, Lcom/huami/watch/transport/DataTransportResult;->resultCode:I

    packed-switch v1, :pswitch_data_0

    .line 84
    const-string v0, "NONE"

    .line 87
    .local v0, "resultStr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportResult;->dataItem:Lcom/huami/watch/transport/TransportDataItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0    # "resultStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "OK"

    .line 70
    .restart local v0    # "resultStr":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0    # "resultStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "FAILED_CHANNEL_UNAVAILABLE"

    .line 73
    .restart local v0    # "resultStr":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v0    # "resultStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "FAILED_LINK_DISCONNECTED"

    .line 76
    .restart local v0    # "resultStr":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0    # "resultStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "FAILED_IWDS_CRASH"

    .line 79
    .restart local v0    # "resultStr":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v0    # "resultStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "FAILED_TRANSPORT_SERVICE_UNCONNECTED"

    .line 82
    .restart local v0    # "resultStr":Ljava/lang/String;
    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportResult;->dataItem:Lcom/huami/watch/transport/TransportDataItem;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget v0, p0, Lcom/huami/watch/transport/DataTransportResult;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
