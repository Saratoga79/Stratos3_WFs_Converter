.class public Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;
.super Ljava/lang/Object;
.source "WatchFaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;,
        Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;,
        Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TextDisplayProfile;,
        Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$TypefaceProfile;,
        Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$InnerWatchFace;,
        Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;,
        Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public analogWatchFace:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;

.field public background:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

.field public digitalWatchFace:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;->background:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Background;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;->digitalWatchFace:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$DigitalStyleWatchFace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo;->analogWatchFace:Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$AnalogStyleWatchFace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    return-void
.end method
