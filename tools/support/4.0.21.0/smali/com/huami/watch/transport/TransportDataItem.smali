.class public Lcom/huami/watch/transport/TransportDataItem;
.super Ljava/lang/Object;
.source "TransportDataItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/transport/TransportDataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lcom/huami/watch/transport/DataBundle;

.field private time:J

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/huami/watch/transport/TransportDataItem$1;

    invoke-direct {v0}, Lcom/huami/watch/transport/TransportDataItem$1;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/TransportDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/TransportDataItem;->uri:Landroid/net/Uri;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huami/watch/transport/TransportDataItem;->time:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    .local v0, "length":I
    new-instance v1, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v1, p1, v0}, Lcom/huami/watch/transport/DataBundle;-><init>(Landroid/os/Parcel;I)V

    iput-object v1, p0, Lcom/huami/watch/transport/TransportDataItem;->data:Lcom/huami/watch/transport/DataBundle;

    .line 40
    iget-object v1, p0, Lcom/huami/watch/transport/TransportDataItem;->data:Lcom/huami/watch/transport/DataBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/DataBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/TransportDataItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huami/watch/transport/TransportDataItem;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/huami/watch/transport/TransportDataItem;->data:Lcom/huami/watch/transport/DataBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/transport/TransportDataItem;->data:Lcom/huami/watch/transport/DataBundle;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataBundle;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/huami/watch/transport/TransportDataItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Lcom/huami/watch/transport/TransportDataItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lcom/huami/watch/transport/TransportDataItem;->data:Lcom/huami/watch/transport/DataBundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huami/watch/transport/DataBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    return-void
.end method
