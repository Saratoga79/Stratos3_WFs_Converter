.class public Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;
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
    name = "InnerWatchFace"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public background:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

.field public fontDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

.field public pointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

.field public posX:I

.field public posY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnerWatchFace [background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->background:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->pointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->posX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->posY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textDisplayProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->fontDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 239
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->background:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 240
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->pointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 242
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->posX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->posY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->fontDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 246
    return-void
.end method
