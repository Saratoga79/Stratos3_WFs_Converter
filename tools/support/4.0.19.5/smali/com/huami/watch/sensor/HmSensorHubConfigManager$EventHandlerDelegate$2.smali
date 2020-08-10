.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;
.super Landroid/os/Handler;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

.field final synthetic val$this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;Landroid/os/Looper;Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    iput-object p3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->val$this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1204
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1403
    :goto_0
    return-void

    .line 1206
    :pswitch_0
    const/4 v11, 0x0

    .line 1207
    .local v11, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;

    .line 1208
    .local v10, "info":Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;
    iget-object v5, v10, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;->clientId:Ljava/lang/String;

    .line 1209
    .local v5, "clientId":Ljava/lang/String;
    iget-object v12, v10, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;->msg:Ljava/lang/String;

    .line 1210
    .local v12, "r_msg":Ljava/lang/String;
    iget v15, v10, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;->resultCode:I

    .line 1212
    .local v15, "resultCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$100(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Ljava/lang/String;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    move-result-object v11

    .line 1214
    if-eqz v11, :cond_2

    .line 1215
    invoke-static {}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$200()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1216
    const-string v19, "HmSensorHubManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HmSensorHubConfigManager dispatching onFinish("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_0
    invoke-interface {v11, v15, v12}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;->onFinish(ILjava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$200()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1221
    const-string v19, "HmSensorHubManager"

    const-string v20, "dispathing done, unregister callback listener~"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$300(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1226
    :cond_2
    const-string v19, "HmSensorHubManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "can\'t find listener for client:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1230
    .end local v5    # "clientId":Ljava/lang/String;
    .end local v10    # "info":Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;
    .end local v11    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .end local v12    # "r_msg":Ljava/lang/String;
    .end local v15    # "resultCode":I
    :pswitch_1
    const/4 v7, 0x0

    .line 1231
    .local v7, "dataListener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;

    .line 1232
    .local v6, "dataInfo":Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$400(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 1233
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-wide v0, v6, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->sessionId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$500(Lcom/huami/watch/sensor/HmSensorHubConfigManager;J)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;

    move-result-object v7

    .line 1234
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    if-eqz v7, :cond_4

    .line 1236
    invoke-static {}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$200()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1237
    const-string v19, "HmSensorHubManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HmSensorHubConfigManager dispatching onDataReady("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v6, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->sessionId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v6, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->data:Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_3
    iget-wide v0, v6, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->sessionId:J

    move-wide/from16 v20, v0

    iget-object v0, v6, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->data:Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    move-object/from16 v19, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-interface {v7, v0, v1, v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;->onDataReady(JLcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-wide v0, v6, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;->sessionId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$600(Lcom/huami/watch/sensor/HmSensorHubConfigManager;J)V

    goto/16 :goto_0

    .line 1234
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 1245
    :cond_4
    const-string v19, "HmSensorHubManager"

    const-string v20, "null listener!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1249
    .end local v6    # "dataInfo":Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;
    .end local v7    # "dataListener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    :pswitch_2
    const/4 v4, 0x0

    .line 1250
    .local v4, "callback":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/huami/watch/klvp/KlvpResponse;

    .line 1251
    .local v13, "response":Lcom/huami/watch/klvp/KlvpResponse;
    if-nez v13, :cond_5

    .line 1252
    const-string v19, "HmSensorHubManager"

    const-string v20, " response is null !!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1255
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$400(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 1256
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->pairId:S

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$700(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    move-result-object v4

    .line 1257
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1260
    if-eqz v4, :cond_b

    .line 1261
    invoke-static {}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$200()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1262
    const-string v19, "HmSensorHubManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "response target:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_6
    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1307
    const-string v19, "HmSensorHubManager"

    const-string v20, "undefined target"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :goto_1
    invoke-static {}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$200()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1311
    const-string v19, "HmSensorHubManager"

    const-string v20, "callback called !!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->pairId:S

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)V

    goto/16 :goto_0

    .line 1257
    :catchall_1
    move-exception v19

    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v19

    .line 1266
    :pswitch_3
    const/16 v16, 0x0

    .line 1268
    .local v16, "sportStatistics":Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    :try_start_4
    iget-object v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    :try_end_4
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v16

    .line 1273
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$800(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Landroid/util/SparseArray;

    move-result-object v19

    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->pairId:S

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 1274
    .local v18, "typeInt":Ljava/lang/Integer;
    const/16 v17, -0x1

    .line 1275
    .local v17, "type":I
    if-eqz v18, :cond_8

    .line 1276
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1278
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$800(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Landroid/util/SparseArray;

    move-result-object v19

    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->pairId:S

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->remove(I)V

    .line 1279
    if-eqz v16, :cond_a

    .line 1280
    packed-switch v17, :pswitch_data_2

    .line 1298
    const-string v19, "HmSensorHubManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unknown type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "of pairid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->pairId:S

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1270
    .end local v17    # "type":I
    .end local v18    # "typeInt":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    .line 1271
    .local v9, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v9}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto :goto_2

    .line 1283
    .end local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .restart local v17    # "type":I
    .restart local v18    # "typeInt":Ljava/lang/Integer;
    :pswitch_4
    const/16 v19, 0x0

    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v4, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;->onHealthDataReady(IF)V

    goto/16 :goto_1

    .line 1287
    :pswitch_5
    const/4 v8, 0x0

    .line 1288
    .local v8, "distance":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1289
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->getMDistance()F

    move-result v8

    .line 1291
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v4, v0, v8}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;->onHealthDataReady(IF)V

    goto/16 :goto_1

    .line 1295
    .end local v8    # "distance":F
    :pswitch_6
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;->onSportDataReady(Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;)V

    goto/16 :goto_1

    .line 1302
    :cond_a
    const-string v19, "HmSensorHubManager"

    const-string v20, "probuf decode wrong of SportStatistics!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1315
    .end local v16    # "sportStatistics":Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .end local v17    # "type":I
    .end local v18    # "typeInt":Ljava/lang/Integer;
    :cond_b
    const-string v19, "HmSensorHubManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "callback is null of pairId :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-short v0, v13, Lcom/huami/watch/klvp/KlvpResponse;->pairId:S

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " maybe it\'s config cmd"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1320
    .end local v4    # "callback":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;
    .end local v13    # "response":Lcom/huami/watch/klvp/KlvpResponse;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/huami/watch/klvp/KlvpResponse;

    .line 1322
    .local v14, "response1":Lcom/huami/watch/klvp/KlvpResponse;
    if-nez v14, :cond_c

    .line 1323
    const-string v19, "HmSensorHubManager"

    const-string v20, " response1 is null !!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1327
    :cond_c
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x3c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1329
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1000(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;)V
    :try_end_5
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1330
    :catch_1
    move-exception v9

    .line 1331
    .restart local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v9}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto/16 :goto_0

    .line 1333
    .end local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_d
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x43

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1336
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1100(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;)V
    :try_end_6
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1337
    :catch_2
    move-exception v9

    .line 1338
    .restart local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v9}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto/16 :goto_0

    .line 1340
    .end local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_f
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x3e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1342
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1200(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;)V
    :try_end_7
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1343
    :catch_3
    move-exception v9

    .line 1344
    .restart local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v9}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto/16 :goto_0

    .line 1346
    .end local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_10
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x42

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1300(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    goto/16 :goto_0

    .line 1348
    :cond_11
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x40

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x41

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 1350
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1400(Lcom/huami/watch/sensor/HmSensorHubConfigManager;[B)V

    goto/16 :goto_0

    .line 1351
    :cond_13
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1353
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->parseFrom([B)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1500(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;Z)V
    :try_end_8
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1354
    :catch_4
    move-exception v9

    .line 1355
    .restart local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v9}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto/16 :goto_0

    .line 1357
    .end local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_14
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x51

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1359
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->parseFrom([B)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1500(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;Z)V
    :try_end_9
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 1360
    :catch_5
    move-exception v9

    .line 1361
    .restart local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v9}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto/16 :goto_0

    .line 1363
    .end local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_15
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x53

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 1365
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->parseFrom([B)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1600(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;)V
    :try_end_a
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 1366
    :catch_6
    move-exception v9

    .line 1367
    .restart local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v9}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto/16 :goto_0

    .line 1369
    .end local v9    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_16
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x4d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1370
    const-string v19, "HmSensorHubManager"

    const-string v20, "receive CMDProtos.BLE_CMD_MCU_AP_NOTIFY_HEAVY_DELAY_SEND"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1700(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)V

    goto/16 :goto_0

    .line 1377
    :cond_17
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x48

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1378
    const-string v19, "HmSensorHubManager"

    const-string v20, "receive CMDProtos.BLE_CMD_MCU_AP_NOTIFY_DELAY_SEND"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1700(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)V

    goto/16 :goto_0

    .line 1385
    :cond_18
    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v19, v0

    const/16 v20, 0x4c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1386
    const-string v19, "HmSensorHubManager"

    const-string v20, "receive CMDProtos.BLE_CMD_MCU_AP_NOTIFY_NORMAL_SEND"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1700(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)V

    goto/16 :goto_0

    .line 1394
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    move-object/from16 v19, v0

    iget-byte v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->cmd:B

    move/from16 v20, v0

    iget-short v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->target:S

    move/from16 v21, v0

    iget-object v0, v14, Lcom/huami/watch/klvp/KlvpResponse;->responseValues:[B

    move-object/from16 v22, v0

    invoke-static/range {v19 .. v22}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1800(Lcom/huami/watch/sensor/HmSensorHubConfigManager;BS[B)V

    goto/16 :goto_0

    .line 1204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 1264
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    .line 1280
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
