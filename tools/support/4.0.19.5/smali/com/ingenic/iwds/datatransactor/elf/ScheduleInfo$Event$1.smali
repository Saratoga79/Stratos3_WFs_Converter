.class final Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event$1;
.super Ljava/lang/Object;
.source "ScheduleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;
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
        "Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 160
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->id:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->title:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventLocation:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->description:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtStart:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtEnd:J

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventTimezone:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->duration:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->allDay:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->hasAlarm:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->rrule:Ljava/lang/String;

    .line 179
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->reminder:Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    .line 182
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 187
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    move-result-object v0

    return-object v0
.end method
