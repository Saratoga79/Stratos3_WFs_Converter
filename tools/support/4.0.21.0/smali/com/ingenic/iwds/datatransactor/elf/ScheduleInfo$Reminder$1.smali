.class final Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder$1;
.super Ljava/lang/Object;
.source "ScheduleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;
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
        "Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 237
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;-><init>()V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;->id:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;->eventId:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;->minutes:J

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;->method:J

    .line 244
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 249
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    move-result-object v0

    return-object v0
.end method
