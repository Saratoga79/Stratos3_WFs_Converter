.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigFinishInfo"
.end annotation


# instance fields
.field public clientId:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public resultCode:I

.field final synthetic this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# direct methods
.method public constructor <init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "resultCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "clientId"    # Ljava/lang/String;

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput p2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;->resultCode:I

    .line 1109
    iput-object p3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;->msg:Ljava/lang/String;

    .line 1110
    iput-object p4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;->clientId:Ljava/lang/String;

    .line 1111
    return-void
.end method
