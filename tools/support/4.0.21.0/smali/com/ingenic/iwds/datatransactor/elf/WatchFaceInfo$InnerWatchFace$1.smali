.class final Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace$1;
.super Ljava/lang/Object;
.source "WatchFaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;
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
        "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 251
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;-><init>()V

    .line 253
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

    .line 254
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->background:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

    .line 256
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->pointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->posX:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->posY:I

    .line 262
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    .line 263
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;->fontDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    .line 265
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 270
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    move-result-object v0

    return-object v0
.end method
