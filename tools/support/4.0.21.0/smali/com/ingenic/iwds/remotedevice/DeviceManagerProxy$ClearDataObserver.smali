.class Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

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
    const/4 v1, 0x0

    .line 271
    if-eqz p2, :cond_0

    move v0, v1

    .line 273
    :goto_0
    new-instance v2, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    invoke-direct {v2, p1, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 276
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$600(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearDataObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 278
    return-void

    .line 271
    :cond_0
    const/16 v0, -0x77

    goto :goto_0
.end method
