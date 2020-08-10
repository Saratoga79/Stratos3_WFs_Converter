.class public Lcom/mswiniuch/FiveLines2/data/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"


# instance fields
.field public city:Ljava/lang/String;

.field public forecastString:Ljava/lang/String;

.field public forecastType:I

.field public humidity:Ljava/lang/String;

.field public tempFlag:Ljava/lang/String;

.field public tempString:Ljava/lang/String;

.field public timeStampInSeconds:J

.field public uv:Ljava/lang/String;

.field public weatherType:I

.field public windArrow:Ljava/lang/String;

.field public windDirection:Ljava/lang/String;

.field public windStrength:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "n/a"

    .line 9
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->city:Ljava/lang/String;

    const-string v0, "n/a"

    .line 10
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->humidity:Ljava/lang/String;

    const-string v0, "n/a"

    .line 11
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->uv:Ljava/lang/String;

    const-string v0, "n/a"

    .line 12
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v0, "n/a"

    .line 13
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windStrength:Ljava/lang/String;

    const-string v0, "\u2022"

    .line 14
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windArrow:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempFlag:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempString:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    .line 21
    iput p3, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    .line 22
    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "n/a"

    .line 9
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->city:Ljava/lang/String;

    const-string v0, "n/a"

    .line 10
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->humidity:Ljava/lang/String;

    const-string v0, "n/a"

    .line 11
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->uv:Ljava/lang/String;

    const-string v0, "n/a"

    .line 12
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v0, "n/a"

    .line 13
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windStrength:Ljava/lang/String;

    const-string v0, "\u2022"

    .line 14
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windArrow:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempFlag:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempString:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    .line 29
    iput-object p3, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastString:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    .line 31
    iput-object p6, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->city:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->humidity:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->uv:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    .line 35
    iput-object p10, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windStrength:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/data/WeatherData;->getWindDirectionArrow()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windArrow:Ljava/lang/String;

    .line 37
    iput-wide p11, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->timeStampInSeconds:J

    return-void
.end method


# virtual methods
.method public getTemperature()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempString:Ljava/lang/String;

    const-string v1, "0/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempString:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "-/-"

    return-object v0
.end method

.method public getUnits()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempFlag:Ljava/lang/String;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u00baF"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "\u00baC"

    :goto_1
    return-object v0
.end method

.method public getWindDirectionArrow()Ljava/lang/String;
    .locals 3

    const-string v0, "\u2022"

    .line 78
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "NW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u2196"

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u2191"

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "NE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u2197"

    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u2190"

    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "\u2192"

    goto :goto_0

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "SW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "\u2199"

    goto :goto_0

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "\u2193"

    goto :goto_0

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v2, "SE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "\u2198"

    :cond_7
    :goto_0
    return-object v0
.end method

.method public getWindDirectionType()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "NW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "NE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "SW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 65
    :cond_6
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "weather info [tempFlag:%s, tempString:%s, weatherType:%d"

    const/4 v1, 0x3

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempFlag:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempString:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
