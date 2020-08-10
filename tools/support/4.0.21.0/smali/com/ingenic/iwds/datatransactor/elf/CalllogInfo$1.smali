.class final Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo$1;
.super Ljava/lang/Object;
.source "CalllogInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 115
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$002(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$102(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$202(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;J)J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$302(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$402(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$502(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$602(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->access$702(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I

    .line 124
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 129
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;

    move-result-object v0

    return-object v0
.end method
