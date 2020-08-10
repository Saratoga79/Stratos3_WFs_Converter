.class Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;
.super Lcom/ingenic/iwds/smartsense/ISensorService$Stub;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;
    }
.end annotation


# instance fields
.field private m_callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/ISensorService$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    .line 143
    invoke-static {}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->getSensorCount()I

    move-result v1

    .line 144
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 145
    new-instance v2, Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-direct {v2}, Lcom/ingenic/iwds/smartsense/Sensor;-><init>()V

    .line 147
    invoke-static {v2, v0}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->forEachSensor(Lcom/ingenic/iwds/smartsense/Sensor;I)V

    .line 149
    new-instance v3, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;

    invoke-direct {v3, p0, v2}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;-><init>(Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;Lcom/ingenic/iwds/smartsense/Sensor;)V

    .line 150
    iget-object v4, v3, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v4}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    invoke-static {v4, v3}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->installSensorEventCallback(ILcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;)V

    .line 151
    iget-object v4, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method static synthetic access$000(IZ)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->setActive(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 43
    invoke-static {p0}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->setWearOnRightHand(Z)Z

    move-result v0

    return v0
.end method

.method private static final native forEachSensor(Lcom/ingenic/iwds/smartsense/Sensor;I)V
.end method

.method private static final native getSensorCount()I
.end method

.method private static final native installSensorEventCallback(ILcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;)V
.end method

.method private static final native isActive(I)Z
.end method

.method private static final native setActive(IZ)Z
.end method

.method private static final native setWearOnRightHand(Z)Z
.end method


# virtual methods
.method public getDefaultSensor(I)Lcom/ingenic/iwds/smartsense/Sensor;
    .locals 4
    .param p1, "sensorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;

    .line 166
    iget-object v3, v0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 167
    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    monitor-exit v1

    .line 170
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSensorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->getSensorList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/ISensorEventCallback;Lcom/ingenic/iwds/smartsense/Sensor;I)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/smartsense/ISensorEventCallback;
    .param p3, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p4, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;

    .line 180
    iget-object v3, v0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    invoke-virtual {p3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/ISensorEventCallback;)Z

    .line 183
    const/4 v0, 0x1

    monitor-exit v1

    .line 186
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;

    .line 194
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->unregisterListener(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    return-void
.end method
