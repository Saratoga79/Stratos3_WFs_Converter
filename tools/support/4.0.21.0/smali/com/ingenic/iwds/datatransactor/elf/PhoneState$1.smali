.class final Lcom/ingenic/iwds/datatransactor/elf/PhoneState$1;
.super Ljava/lang/Object;
.source "PhoneState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/PhoneState;
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
        "Lcom/ingenic/iwds/datatransactor/elf/PhoneState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/PhoneState;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 90
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/PhoneState;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/PhoneState;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/PhoneState;->state:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/PhoneState;->number:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/PhoneState;->name:Ljava/lang/String;

    .line 94
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/PhoneState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/PhoneState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/PhoneState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 99
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/PhoneState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/PhoneState$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/PhoneState;

    move-result-object v0

    return-object v0
.end method
