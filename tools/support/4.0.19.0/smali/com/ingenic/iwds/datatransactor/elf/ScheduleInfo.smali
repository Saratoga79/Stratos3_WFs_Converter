.class public Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;
.super Ljava/lang/Object;
.source "ScheduleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Reminder;,
        Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public event:[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

.field public eventCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Event count < 0."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 48
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->eventCount:I

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->eventCount:I

    new-array v0, v0, [Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->event:[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    .line 53
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleInfo [event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->event:[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->eventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->event:[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo;->event:[Lcom/ingenic/iwds/datatransactor/elf/ScheduleInfo$Event;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 67
    :cond_0
    return-void
.end method
