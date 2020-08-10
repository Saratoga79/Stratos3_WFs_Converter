.class public Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;
.super Ljava/lang/Object;
.source "TimeAdditionalInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public sunrise:Ljava/lang/String;

.field public sunset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sunrise"    # Ljava/lang/String;
    .param p2, "sunset"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "sunrise is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 38
    if-nez p2, :cond_1

    :goto_1
    const-string v0, "sunset is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunrise:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunset:Ljava/lang/String;

    .line 42
    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    :cond_1
    move v1, v2

    .line 38
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeAdditionalInfo [sunrise = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunrise:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sunset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunset:Ljava/lang/String;

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
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunrise:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
