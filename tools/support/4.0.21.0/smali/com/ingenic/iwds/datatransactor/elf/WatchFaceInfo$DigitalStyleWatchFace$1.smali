.class final Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace$1;
.super Ljava/lang/Object;
.source "WatchFaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;
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
        "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 100
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;-><init>()V

    .line 102
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->hourDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 106
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->minuteDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 110
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->separatorDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 114
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->traditionalChineseCalenderDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 118
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;->dateDateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    .line 121
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 126
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;

    move-result-object v0

    return-object v0
.end method
