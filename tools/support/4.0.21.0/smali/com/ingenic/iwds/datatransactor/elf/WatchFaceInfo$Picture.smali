.class public Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;
.super Ljava/lang/Object;
.source "WatchFaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Picture"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_data:[B

.field private m_height:I

.field private m_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Data is null or empty."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 393
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string v0, "Width <= 0 or Heigth <= 0."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 396
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_data:[B

    .line 398
    iput p2, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_width:I

    .line 399
    iput p3, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_height:I

    .line 400
    return-void

    :cond_3
    move v0, v1

    .line 390
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_data:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Picture [m_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 424
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;->m_height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    return-void
.end method
