.class final Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo$1;
.super Ljava/lang/Object;
.source "WeatherInfoArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 135
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->city:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->weather:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->weatherCode:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->date:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->dayOfWeek:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->updateTime:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->tempUnit:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->currentTemp:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->minimumTemp:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->maximumTemp:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->dayIndex:I

    .line 149
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 154
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    move-result-object v0

    return-object v0
.end method
