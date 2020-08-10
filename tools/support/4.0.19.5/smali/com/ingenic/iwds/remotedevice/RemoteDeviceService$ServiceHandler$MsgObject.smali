.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;
.super Ljava/lang/Object;
.source "RemoteDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgObject"
.end annotation


# instance fields
.field apkFilePath:Ljava/lang/String;

.field isInstalledInExternal:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->uuid:Ljava/lang/String;

    .line 1475
    iput-object p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->packageName:Ljava/lang/String;

    .line 1476
    return-void
.end method

.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "apkFilePath"    # Ljava/lang/String;
    .param p4, "isInstalledInExternal"    # Z

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->uuid:Ljava/lang/String;

    .line 1469
    iput-object p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->apkFilePath:Ljava/lang/String;

    .line 1470
    iput-boolean p4, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$MsgObject;->isInstalledInExternal:Z

    .line 1471
    return-void
.end method
