.class public interface abstract Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKlvpDataListener"
.end annotation


# virtual methods
.method public abstract onHealthDataReady(IF)V
.end method

.method public abstract onSportDataReady(Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;)V
.end method
