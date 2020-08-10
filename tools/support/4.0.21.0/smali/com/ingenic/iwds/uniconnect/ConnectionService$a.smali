.class Lcom/ingenic/iwds/uniconnect/ConnectionService$a;
.super Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/uniconnect/ConnectionService;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/uniconnect/ConnectionService;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$a;->a:Lcom/ingenic/iwds/uniconnect/ConnectionService;

    invoke-direct {p0}, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/uniconnect/ConnectionService;Lcom/ingenic/iwds/uniconnect/ConnectionService$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/uniconnect/ConnectionService$a;-><init>(Lcom/ingenic/iwds/uniconnect/ConnectionService;)V

    return-void
.end method


# virtual methods
.method public createConnection(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)Lcom/ingenic/iwds/uniconnect/IConnection;
    .locals 1
    .param p1, "callBack"    # Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;-><init>(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)V

    return-object v0
.end method

.method public getConnectedDeviceDescriptors()[Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->getInstance()Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->getDeviceDescriptorsArray()[Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    return-object v0
.end method
