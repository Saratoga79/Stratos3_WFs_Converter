.class public Lcom/ingenic/iwds/slpt/PictureData;
.super Ljava/lang/Object;
.source "PictureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/slpt/PictureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:I

.field public bitmapBuffer:[I

.field public height:I

.field public pictureIndex:I

.field public pictureSize:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/ingenic/iwds/slpt/PictureData$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/PictureData$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/slpt/PictureData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/PictureData;->bitmapBuffer:[I

    .line 16
    iput v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->pictureSize:I

    .line 17
    iput v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->pictureIndex:I

    .line 18
    iput v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->width:I

    .line 19
    iput v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->height:I

    .line 20
    iput v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->backgroundColor:I

    .line 21
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/PictureData;->bitmapBuffer:[I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->bitmapBuffer:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->pictureIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/ingenic/iwds/slpt/PictureData;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method
