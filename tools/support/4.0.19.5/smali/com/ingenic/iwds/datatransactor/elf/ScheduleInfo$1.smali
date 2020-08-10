.class final Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$1;
.super Ljava/lang/Object;
.source "ScheduleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;-><init>(I)V

    .line 75
    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->eventCount:I

    .line 76
    iget-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->event:[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->event:[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    sget-object v2, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 80
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;

    move-result-object v0

    return-object v0
.end method
