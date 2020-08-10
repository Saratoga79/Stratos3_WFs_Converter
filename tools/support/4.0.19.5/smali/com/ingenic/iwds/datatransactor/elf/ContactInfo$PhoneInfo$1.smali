.class final Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo$1;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 69
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;->type:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    .line 72
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 77
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;

    move-result-object v0

    return-object v0
.end method
