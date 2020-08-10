.class public Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;
.super Ljava/lang/Object;
.source "RemoteStorageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public availExternalSize:J

.field public availInternalSize:J

.field public hasExternalStorage:Z

.field public totalExternalSize:J

.field public totalInternalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJZJJ)V
    .locals 0
    .param p1, "availInternalSize"    # J
    .param p3, "totalInternalSize"    # J
    .param p5, "hasExternalStorage"    # Z
    .param p6, "availExternalSize"    # J
    .param p8, "totalExternalSize"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->availInternalSize:J

    .line 57
    iput-wide p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->totalInternalSize:J

    .line 58
    iput-boolean p5, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->hasExternalStorage:Z

    .line 59
    iput-wide p6, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->availExternalSize:J

    .line 60
    iput-wide p8, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->totalExternalSize:J

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->availInternalSize:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->totalInternalSize:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->hasExternalStorage:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->availExternalSize:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->totalExternalSize:J

    .line 96
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->availInternalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->totalInternalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->hasExternalStorage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->availExternalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->totalExternalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
