.class final Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo$1;
.super Ljava/lang/Object;
.source "SyncTimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;->currenttime:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;->timezoneid:Ljava/lang/String;

    .line 55
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/SyncTimeInfo;

    move-result-object v0

    return-object v0
.end method
