.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;
.super Ljava/lang/Object;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllAppDataMsgObj"
.end annotation


# instance fields
.field index:I

.field packageName:Ljava/lang/String;

.field returnCode:I

.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

.field totalCount:I

.field typeOfIndex:I


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;IILjava/lang/String;II)V
    .locals 0
    .param p2, "totalCount"    # I
    .param p3, "index"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "typeOfIndex"    # I
    .param p6, "returnCode"    # I

    .prologue
    .line 608
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->totalCount:I

    .line 610
    iput p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->index:I

    .line 611
    iput-object p4, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->packageName:Ljava/lang/String;

    .line 612
    iput p5, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->typeOfIndex:I

    .line 613
    iput p6, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceAppCallback$ClearAllAppDataMsgObj;->returnCode:I

    .line 614
    return-void
.end method
