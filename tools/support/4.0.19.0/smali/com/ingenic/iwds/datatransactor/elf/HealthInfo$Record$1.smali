.class final Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record$1;
.super Ljava/lang/Object;
.source "HealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;
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
        "Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 240
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;-><init>()V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;->startTime:J

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;->endTime:J

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;->type:I

    .line 247
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 252
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    move-result-object v0

    return-object v0
.end method
