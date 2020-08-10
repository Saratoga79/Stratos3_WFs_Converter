.class final Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$1;
.super Ljava/lang/Object;
.source "WeatherInfoArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;
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
        "Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 61
    sget-object v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    .line 63
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;-><init>([Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;)V

    .line 65
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;

    move-result-object v0

    return-object v0
.end method
