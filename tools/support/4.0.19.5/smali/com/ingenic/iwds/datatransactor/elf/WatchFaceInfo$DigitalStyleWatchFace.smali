.class public Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;
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
    name = "DigitalStyleWatchFace"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dateDateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

.field public hourDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

.field public minuteDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

.field public separatorDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

.field public traditionalChineseCalenderDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DigitalStyleWatchFace [hourDisplayProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->hourDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minuteDisplayProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->minuteDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", separatorDisplayProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->separatorDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", traditionalChineseCalenderDisplayProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->traditionalChineseCalenderDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataDateDisplayProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->dateDateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

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
    .line 88
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->hourDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->minuteDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->separatorDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->traditionalChineseCalenderDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->dateDateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    return-void
.end method
