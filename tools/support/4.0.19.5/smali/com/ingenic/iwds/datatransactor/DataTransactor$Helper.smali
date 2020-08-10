.class Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;
.super Lcom/ingenic/iwds/app/ConnectionHelper;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Helper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 1040
    invoke-direct {p0, p2}, Lcom/ingenic/iwds/app/ConnectionHelper;-><init>(Landroid/content/Context;)V

    .line 1041
    return-void
.end method


# virtual methods
.method public onConnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 1
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1200(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->access$1800(Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 1057
    return-void
.end method

.method public onDisconnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 1
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1200(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->access$1900(Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 1062
    return-void
.end method

.method public onServiceConnected(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V
    .locals 1
    .param p1, "connectionServiceManager"    # Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1200(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->start(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V

    .line 1047
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 1
    .param p1, "unexpected"    # Z

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-static {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$1200(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->stop()V

    .line 1052
    return-void
.end method
