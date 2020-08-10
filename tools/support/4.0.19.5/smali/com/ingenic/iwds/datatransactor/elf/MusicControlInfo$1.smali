.class final Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$1;
.super Ljava/lang/Object;
.source "MusicControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->cmd:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicAlbum:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->musicArtist:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->songName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->volumeMax:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;->volumeCurrent:I

    .line 92
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 97
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;

    move-result-object v0

    return-object v0
.end method
