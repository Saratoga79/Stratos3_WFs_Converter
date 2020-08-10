.class final Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace$1;
.super Ljava/lang/Object;
.source "WatchFaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;
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
        "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 179
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;-><init>()V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->updateInterval:I

    .line 183
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->hourPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 186
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->minutePointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 189
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->secondPointer:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    .line 192
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->month:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    .line 195
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    .line 196
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->week:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    .line 198
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->ampm:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;

    .line 201
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;->dateDisplayProfile:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;

    .line 204
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 209
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;

    move-result-object v0

    return-object v0
.end method
