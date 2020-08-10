.class public interface abstract Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "McuBleEventListener"
.end annotation


# virtual methods
.method public abstract OnBleCharacteristicWriteRequest(Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;)V
.end method

.method public abstract onBleUnbindEvent()V
.end method

.method public abstract onGetBleServiceInfo(Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;)V
.end method

.method public abstract onGetDeviceEvent(Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;)V
.end method

.method public abstract onMCUTimeSyncEvent([B)V
.end method

.method public abstract onMcuAMsEvent(Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;)V
.end method

.method public abstract onMcuAnccEvent(Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;Z)V
.end method

.method public abstract onMcuCommonReply(BS[B)V
.end method
