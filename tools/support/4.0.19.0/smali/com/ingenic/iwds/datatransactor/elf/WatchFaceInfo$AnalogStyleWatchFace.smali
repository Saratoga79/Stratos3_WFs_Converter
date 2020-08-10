.class public Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;
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
    name = "AnalogStyleWatchFace"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ampm:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

.field public dateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

.field public hourPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

.field public minutePointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

.field public month:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

.field public secondPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

.field public updateInterval:I

.field public week:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->updateInterval:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnalogStyleWatchFace [updateInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->updateInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hourPointer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->hourPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutePointer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->minutePointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondPointer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->secondPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->month:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->week:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ampm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->ampm:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateDisplayProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->dateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

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
    .line 163
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->updateInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->hourPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->minutePointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->secondPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->month:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->week:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->ampm:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->dateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    return-void
.end method
