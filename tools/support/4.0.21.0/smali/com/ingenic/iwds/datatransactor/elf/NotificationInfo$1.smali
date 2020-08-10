.class final Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo$1;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;-><init>()V

    .line 70
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;->id:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;->appName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;->packageName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;->title:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;->content:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;->updateTime:J

    .line 79
    const/4 v1, -0x1

    iput v1, v0, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;->read:I

    .line 81
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/NotificationInfo;

    move-result-object v0

    return-object v0
.end method
