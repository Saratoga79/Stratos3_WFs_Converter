.class final Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$1;
.super Ljava/lang/Object;
.source "HealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;-><init>(I)V

    .line 177
    iget-object v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->days:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 178
    iget-object v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->weeks:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->rates:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->nowDate:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->temp:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->humidity:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->pressure:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->recordDate:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepTime:J

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->deepSleepTime:J

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->lightSleepTime:J

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepQuality:I

    .line 192
    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->sleepRecordCount:I

    .line 194
    iget-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->record:[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->record:[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;

    sget-object v2, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$Record;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->uitravioletIntensity:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;->altitude:Ljava/lang/String;

    .line 201
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 206
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/HealthInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/HealthInfo;

    move-result-object v0

    return-object v0
.end method
