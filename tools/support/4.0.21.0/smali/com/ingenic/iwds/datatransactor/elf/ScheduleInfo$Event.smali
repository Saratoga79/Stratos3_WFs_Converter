.class public Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;
.super Ljava/lang/Object;
.source "ScheduleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allDay:I

.field public description:Ljava/lang/String;

.field public dtEnd:J

.field public dtStart:J

.field public duration:Ljava/lang/String;

.field public eventLocation:Ljava/lang/String;

.field public eventTimezone:Ljava/lang/String;

.field public hasAlarm:I

.field public id:J

.field public reminder:Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

.field public rrule:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->id:J

    .line 98
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->title:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventLocation:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->description:Ljava/lang/String;

    .line 107
    iput-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtStart:J

    .line 110
    iput-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtEnd:J

    .line 113
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventTimezone:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->duration:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->allDay:I

    .line 122
    iput v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->hasAlarm:I

    .line 125
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->rrule:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->reminder:Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dtStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dtEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTimezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->allDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->hasAlarm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rrule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->rrule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reminder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->reminder:Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->dtEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->eventTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->allDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->hasAlarm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->rrule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;->reminder:Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    return-void
.end method
