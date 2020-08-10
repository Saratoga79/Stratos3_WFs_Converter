.class public Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;
.super Ljava/lang/Object;
.source "RemoteProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public memSize:I

.field public pid:I

.field public processName:Ljava/lang/String;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "memSize"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->processName:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->pid:I

    .line 93
    iput p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->uid:I

    .line 94
    iput p4, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->memSize:I

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->processName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->pid:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->uid:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->memSize:I

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;->memSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
