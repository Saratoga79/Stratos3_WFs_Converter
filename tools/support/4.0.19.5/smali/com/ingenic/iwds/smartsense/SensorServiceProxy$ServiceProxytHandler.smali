.class Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;
.super Landroid/os/Handler;
.source "SensorServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/SensorServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceProxytHandler"
.end annotation


# static fields
.field private static final MSG_CHANNEL_STATUS_CHANGED:I = 0x6

.field private static final MSG_REQUEST_REGISTER_LISTENER:I = 0x1

.field private static final MSG_REQUEST_SENSOR_LIST:I = 0x0

.field private static final MSG_REQUEST_UNREGISTER_LISTENER:I = 0x2

.field private static final MSG_SENSOR_ACCURACY_CHANGED:I = 0x5

.field private static final MSG_SENSOR_CHANGED:I = 0x4

.field private static final MSG_SENSOR_SERVICE_CONNECTED:I = 0x3


# instance fields
.field private m_channelAvailable:Z

.field private m_sensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private m_serviceConnected:Z

.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_sensorList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;
    .param p2, "x1"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;-><init>(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 175
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .line 176
    invoke-static {v2}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$100(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v2

    invoke-static {v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->obtain(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    move-result-object v2

    .line 178
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_channelAvailable:Z

    if-nez v0, :cond_1

    .line 181
    const-string v0, "Transfer channel unavailable"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    iput v1, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    .line 186
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$200(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->getSensorList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorList:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get sensor list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorList:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sendToRemote()V

    goto :goto_0

    .line 197
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 198
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register sensor listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/Sensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {p0, v2}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v2}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$200(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v3}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$300(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorEventListener;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->registerListener(Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_sensorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister sensor listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/Sensor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$200(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v2}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$300(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->unregisterListener(Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V

    .line 219
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_sensorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_channelAvailable:Z

    .line 225
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_sensorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 226
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v2}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$200(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v3}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$300(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorEventListener;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->unregisterListener(Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 223
    goto :goto_1

    .line 231
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_3

    move v1, v0

    :cond_3
    iput-boolean v1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_serviceConnected:Z

    .line 233
    iget-boolean v1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_channelAvailable:Z

    if-nez v1, :cond_4

    .line 234
    const-string v0, "Transfer channel unavailable"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_4
    iput v0, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    .line 239
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->result:I

    .line 241
    invoke-virtual {v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sendToRemote()V

    goto/16 :goto_0

    .line 246
    :pswitch_5
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_serviceConnected:Z

    if-nez v0, :cond_5

    .line 247
    const-string v0, "Notify sensor changed, but sensor service already disconnected."

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$400(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    goto/16 :goto_0

    .line 252
    :cond_5
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_channelAvailable:Z

    if-nez v0, :cond_6

    .line 253
    const-string v0, "Transfer channel unavailable"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$400(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    goto/16 :goto_0

    .line 258
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorEvent;

    .line 260
    const/4 v1, 0x2

    iput v1, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    .line 261
    iput-object v0, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorEvent:Lcom/ingenic/iwds/smartsense/SensorEvent;

    .line 263
    invoke-virtual {v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sendToRemote()V

    goto/16 :goto_0

    .line 268
    :pswitch_6
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_serviceConnected:Z

    if-nez v0, :cond_7

    .line 269
    const-string v0, "Notify sensor accuracy changed, but sensor service already disconnected."

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$400(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    goto/16 :goto_0

    .line 274
    :cond_7
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->m_channelAvailable:Z

    if-nez v0, :cond_8

    .line 275
    const-string v0, "Transfer channel unavailable"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$400(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    goto/16 :goto_0

    .line 280
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 281
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 283
    const/4 v3, 0x3

    iput v3, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    .line 284
    iput-object v0, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 285
    iput v1, v2, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->accuracy:I

    .line 287
    invoke-virtual {v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sendToRemote()V

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public handleRequest(Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 148
    iget v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->type:I

    packed-switch v1, :pswitch_data_0

    .line 165
    const-string v0, "Unsupported remote request"

    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 150
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 154
    :pswitch_1
    iput v2, v0, Landroid/os/Message;->what:I

    .line 155
    iget v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensorRate:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 156
    iget-object v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 160
    :pswitch_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 161
    iget-object v1, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifySensorAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 136
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 138
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 140
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method

.method public notifySensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/ingenic/iwds/smartsense/SensorEvent;

    .prologue
    .line 127
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 129
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public notifySensorServiceConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 118
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 120
    const/4 v0, 0x3

    iput v0, v1, Landroid/os/Message;->what:I

    .line 121
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 123
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannelState(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 109
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 111
    const/4 v0, 0x6

    iput v0, v1, Landroid/os/Message;->what:I

    .line 112
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 114
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
