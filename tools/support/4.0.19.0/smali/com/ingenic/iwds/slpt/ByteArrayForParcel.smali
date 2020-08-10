.class public Lcom/ingenic/iwds/slpt/ByteArrayForParcel;
.super Ljava/lang/Object;
.source "ByteArrayForParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/slpt/ByteArrayForParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field array:[B

.field length:I

.field offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/ByteArrayForParcel$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    .line 8
    iput v2, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->length:I

    .line 9
    iput v2, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->offset:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 35
    .local v0, "length":I
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getArray()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    return-object v0
.end method

.method public setArray([BII)V
    .locals 0
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 12
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    .line 13
    iput p2, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->offset:I

    .line 14
    iput p3, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->length:I

    .line 15
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    iget v1, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->offset:I

    iget v2, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->length:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 31
    :cond_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/ByteArrayForParcel;->array:[B

    array-length v0, v0

    goto :goto_0
.end method
