.class public Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;
.super Ljava/lang/Object;
.source "HealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOTION_DEEP_SLEEP:I = 0x7

.field public static final MOTION_FALL:I = 0x40

.field public static final MOTION_MAX:I = 0x5

.field public static final MOTION_RESET:I = 0x0

.field public static final MOTION_RUN:I = 0x3

.field public static final MOTION_SLEEP:I = 0x6

.field public static final MOTION_STOP:I = 0x1

.field public static final MOTION_VEHICLE:I = 0x4

.field public static final MOTION_WALK:I = 0x2


# instance fields
.field public altitude:Ljava/lang/String;

.field public days:[Ljava/lang/String;

.field public deepSleepTime:J

.field public humidity:I

.field public lightSleepTime:J

.field public nowDate:J

.field public pressure:I

.field public rates:Ljava/lang/String;

.field public record:[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

.field public recordDate:J

.field public sleepQuality:I

.field public sleepRecordCount:I

.field public sleepTime:J

.field public temp:I

.field public uitravioletIntensity:I

.field public weeks:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepRecordCount:I

    .line 112
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->days:[Ljava/lang/String;

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->weeks:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepRecordCount:I

    .line 122
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "monitor size < 0."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 124
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepRecordCount:I

    .line 126
    if-eqz p1, :cond_1

    .line 127
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->record:[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    .line 130
    :cond_1
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->days:[Ljava/lang/String;

    .line 131
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->weeks:[Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HealthInfo [days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->days:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weeks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->weeks:[Ljava/lang/String;

    .line 266
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rates=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->rates:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], nowDate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->nowDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->temp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", humidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->humidity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->pressure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->recordDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deepSleepTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->deepSleepTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lightSleepTime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->lightSleepTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepRecordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepRecordCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", record="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->record:[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    .line 272
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
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepRecordCount:I

    if-lez v0, :cond_1

    .line 142
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepRecordCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->days:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->weeks:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->rates:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->nowDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->temp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->humidity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->pressure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->recordDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->deepSleepTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->lightSleepTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->record:[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->record:[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 167
    :cond_0
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->uitravioletIntensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->altitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
