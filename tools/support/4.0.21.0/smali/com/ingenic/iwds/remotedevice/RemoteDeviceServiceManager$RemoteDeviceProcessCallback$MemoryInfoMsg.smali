.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;
.super Ljava/lang/Object;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryInfoMsg"
.end annotation


# instance fields
.field availSize:J

.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

.field totalSize:J


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;JJ)V
    .locals 0
    .param p2, "availSize"    # J
    .param p4, "totalSize"    # J

    .prologue
    .line 701
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-wide p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;->availSize:J

    .line 703
    iput-wide p4, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;->totalSize:J

    .line 704
    return-void
.end method
