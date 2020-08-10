.class Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;
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
            "Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field processInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->processInfoList:Ljava/util/List;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->processInfoList:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->processInfoList:Ljava/util/List;

    const-class v1, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;)V
    .locals 1
    .param p1, "processInfo"    # Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->processInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->processInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 45
    return-void
.end method
