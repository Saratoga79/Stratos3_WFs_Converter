.class public Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;
.super Ljava/lang/Object;
.source "MusicControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cmd:I

.field public musicAlbum:Ljava/lang/String;

.field public musicArtist:Ljava/lang/String;

.field public songName:Ljava/lang/String;

.field public volumeCurrent:I

.field public volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, -0x63

    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->cmd:I

    .line 49
    iput-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicAlbum:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicArtist:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->songName:Ljava/lang/String;

    .line 58
    const/16 v0, 0xf

    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->volumeMax:I

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->volumeCurrent:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicControlInfo [cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicAlbum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicArtist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", songName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 70
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->cmd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->volumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->volumeCurrent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
