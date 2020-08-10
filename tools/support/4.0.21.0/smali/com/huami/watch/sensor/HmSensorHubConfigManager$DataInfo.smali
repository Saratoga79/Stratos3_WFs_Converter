.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataInfo"
.end annotation


# instance fields
.field public data:Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

.field public sessionId:J

.field final synthetic this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# direct methods
.method public constructor <init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;JLcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;)V
    .locals 0
    .param p2, "sessionId"    # J
    .param p4, "data"    # Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput-wide p2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->sessionId:J

    .line 1122
    iput-object p4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->data:Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    .line 1123
    return-void
.end method
