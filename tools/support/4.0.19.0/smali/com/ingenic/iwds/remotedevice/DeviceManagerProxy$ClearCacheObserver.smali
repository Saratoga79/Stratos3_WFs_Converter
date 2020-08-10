.class Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearCacheObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearCacheObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isSucceeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 297
    :goto_0
    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 299
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearCacheObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 300
    return-void

    .line 295
    :cond_0
    const/16 v0, -0x77

    goto :goto_0
.end method
