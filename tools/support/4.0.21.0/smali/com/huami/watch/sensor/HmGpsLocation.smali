.class public Lcom/huami/watch/sensor/HmGpsLocation;
.super Ljava/lang/Object;
.source "HmGpsLocation.java"


# instance fields
.field private HDOP:F

.field private accuracy:I

.field private altitude:F

.field private atmospheric:D

.field private bar:I

.field private course:F

.field private gloIndex:I

.field private gpsNum:I

.field private latitude:D

.field private longitude:D

.field private nmea:Ljava/lang/String;

.field private pointType:I

.field private reserved1:I

.field private reserved2:I

.field private speed:F

.field private timeStamp:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(IDDFDJ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # F
    .param p7, "atmospheric"    # D
    .param p9, "timeStamp"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p9, p0, Lcom/huami/watch/sensor/HmGpsLocation;->timeStamp:J

    .line 45
    iput p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->version:I

    .line 46
    iput-wide p2, p0, Lcom/huami/watch/sensor/HmGpsLocation;->latitude:D

    .line 47
    iput-wide p4, p0, Lcom/huami/watch/sensor/HmGpsLocation;->longitude:D

    .line 48
    iput-wide p7, p0, Lcom/huami/watch/sensor/HmGpsLocation;->atmospheric:D

    .line 49
    iput p6, p0, Lcom/huami/watch/sensor/HmGpsLocation;->altitude:F

    .line 50
    return-void
.end method

.method public constructor <init>(IDDFDJLjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # F
    .param p7, "atmospheric"    # D
    .param p9, "timeStamp"    # J
    .param p11, "nmea"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->version:I

    .line 94
    iput-wide p2, p0, Lcom/huami/watch/sensor/HmGpsLocation;->latitude:D

    .line 95
    iput-wide p4, p0, Lcom/huami/watch/sensor/HmGpsLocation;->longitude:D

    .line 96
    iput-wide p7, p0, Lcom/huami/watch/sensor/HmGpsLocation;->atmospheric:D

    .line 97
    iput p6, p0, Lcom/huami/watch/sensor/HmGpsLocation;->altitude:F

    .line 98
    iput-wide p9, p0, Lcom/huami/watch/sensor/HmGpsLocation;->timeStamp:J

    .line 99
    iput-object p11, p0, Lcom/huami/watch/sensor/HmGpsLocation;->nmea:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/huami/watch/sensor/HmGpsLocationData;)V
    .locals 2
    .param p1, "data"    # Lcom/huami/watch/sensor/HmGpsLocationData;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->version:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->version:I

    .line 62
    iget-wide v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->longitude:D

    iput-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->longitude:D

    .line 63
    iget-wide v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->latitude:D

    iput-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->latitude:D

    .line 64
    iget-wide v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->timeStamp:J

    iput-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->timeStamp:J

    .line 65
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->gloIndex:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->gloIndex:I

    .line 66
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->speed:F

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->speed:F

    .line 67
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->course:F

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->course:F

    .line 68
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->HDOP:F

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->HDOP:F

    .line 69
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->altitude:F

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->altitude:F

    .line 70
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->bar:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->bar:I

    .line 71
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->pointType:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->pointType:I

    .line 72
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->gpsNum:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->gpsNum:I

    .line 73
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->accuracy:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->accuracy:I

    .line 75
    iget-wide v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->atmospheric:D

    iput-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->atmospheric:D

    .line 76
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->reserved1:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->reserved1:I

    .line 77
    iget v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->reserved2:I

    iput v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->reserved2:I

    .line 78
    iget-object v0, p1, Lcom/huami/watch/sensor/HmGpsLocationData;->nmea:Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->nmea:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->accuracy:I

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->altitude:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getAtmospheric()D
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->atmospheric:D

    return-wide v0
.end method

.method public getBar()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->bar:I

    return v0
.end method

.method public getCourse()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->course:F

    return v0
.end method

.method public getGloIndex()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->gloIndex:I

    return v0
.end method

.method public getGpsNum()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->gpsNum:I

    return v0
.end method

.method public getHDOP()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->HDOP:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->longitude:D

    return-wide v0
.end method

.method public getNmea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->nmea:Ljava/lang/String;

    return-object v0
.end method

.method public getPointType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->pointType:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->speed:F

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->timeStamp:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/huami/watch/sensor/HmGpsLocation;->version:I

    return v0
.end method

.method public setAltitude(F)V
    .locals 0
    .param p1, "altitude"    # F

    .prologue
    .line 125
    iput p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->altitude:F

    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->longitude:D

    return-void
.end method

.method public setPointType(I)V
    .locals 0
    .param p1, "pointType"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->pointType:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->speed:F

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->timeStamp:J

    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "ver"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmGpsLocation{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huami/watch/sensor/HmGpsLocation;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huami/watch/sensor/HmGpsLocation;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huami/watch/sensor/HmGpsLocation;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gloIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->gloIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", course="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->course:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HDOP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->HDOP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->altitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->bar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->pointType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gpsNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->gpsNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->accuracy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", atmospheric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huami/watch/sensor/HmGpsLocation;->atmospheric:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->reserved1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->reserved2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nmea=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/sensor/HmGpsLocation;->nmea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
