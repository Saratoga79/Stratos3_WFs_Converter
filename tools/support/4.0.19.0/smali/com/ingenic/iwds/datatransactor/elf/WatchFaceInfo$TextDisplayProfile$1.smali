.class final Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile$1;
.super Ljava/lang/Object;
.source "WatchFaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;
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
        "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 358
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;-><init>()V

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;->posX:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;->posY:I

    .line 363
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    .line 364
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;->typefaceProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    .line 366
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 371
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;

    move-result-object v0

    return-object v0
.end method
