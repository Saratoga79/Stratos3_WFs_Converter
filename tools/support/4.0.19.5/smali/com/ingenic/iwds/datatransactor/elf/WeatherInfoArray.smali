.class public Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;
.super Ljava/lang/Object;
.source "WeatherInfoArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;)V
    .locals 2
    .param p1, "weatherArray"    # [Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Weather array is null or length <= 0."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;->data:[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    .line 46
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    const-string v1, "WeatherInfoArray []:\n"

    .line 173
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;->data:[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    array-length v2, v0

    .line 174
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "data["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;->data:[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray;->data:[Lcom/ingenic/iwds/datatransactor/elf/WeatherInfoArray$WeatherInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 56
    return-void
.end method
