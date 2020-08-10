.class Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;
.super Ljava/lang/Object;
.source "RemoteApplicationInfoList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private remoteAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->remoteAppInfoList:Ljava/util/List;

    .line 41
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 42
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->remoteAppInfoList:Ljava/util/List;

    new-instance v3, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;

    invoke-direct {v3, p1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->remoteAppInfoList:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->remoteAppInfoList:Ljava/util/List;

    const-class v1, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->remoteAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->remoteAppInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 65
    return-void
.end method
