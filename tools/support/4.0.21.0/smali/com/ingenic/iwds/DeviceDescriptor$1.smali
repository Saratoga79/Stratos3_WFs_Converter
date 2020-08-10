.class final Lcom/ingenic/iwds/DeviceDescriptor$1;
.super Ljava/lang/Object;
.source "DeviceDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/DeviceDescriptor;
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
        "Lcom/ingenic/iwds/DeviceDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    new-instance v4, Lcom/ingenic/iwds/DeviceDescriptor;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ingenic/iwds/DeviceDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->androidApiLevel:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->iwdsVersion:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->lcdExterior:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->lcdSize:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/ingenic/iwds/DeviceDescriptor;->extraInfo:Ljava/lang/String;

    .line 227
    return-object v4
.end method

.method public a(I)[Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 1

    .prologue
    .line 232
    new-array v0, p1, [Lcom/ingenic/iwds/DeviceDescriptor;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/DeviceDescriptor$1;->a(Landroid/os/Parcel;)Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/DeviceDescriptor$1;->a(I)[Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    return-object v0
.end method
