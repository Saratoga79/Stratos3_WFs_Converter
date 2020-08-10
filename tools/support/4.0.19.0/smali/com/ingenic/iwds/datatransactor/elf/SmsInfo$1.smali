.class final Lcom/ingenic/iwds/datatransactor/elf/SmsInfo$1;
.super Ljava/lang/Object;
.source "SmsInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 234
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;-><init>()V

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$002(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$102(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$202(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$302(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$402(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$502(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;J)J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$602(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$702(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->access$802(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I

    .line 244
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 249
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;

    move-result-object v0

    return-object v0
.end method
