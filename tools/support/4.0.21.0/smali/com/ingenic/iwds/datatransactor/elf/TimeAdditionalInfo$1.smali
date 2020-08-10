.class final Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;
.super Ljava/lang/Object;
.source "TimeAdditionalInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 56
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;-><init>(Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunrise:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;->sunset:Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/TimeAdditionalInfo;

    move-result-object v0

    return-object v0
.end method
