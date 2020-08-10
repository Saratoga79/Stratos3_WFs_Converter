.class public Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;
.super Ljava/lang/Object;
.source "RemoteDeviceDescriptorStorage.java"


# static fields
.field private static a:Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/DeviceDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->b:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->a:Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    invoke-direct {v0}, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->a:Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    .line 42
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->a:Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;

    return-object v0
.end method


# virtual methods
.method public addDeviceDescriptors(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 2
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 56
    sget-object v1, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceDescriptorsArray()[Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 5

    .prologue
    .line 79
    sget-object v2, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 80
    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 82
    array-length v0, v3

    new-array v4, v0, [Lcom/ingenic/iwds/DeviceDescriptor;

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    .line 84
    aget-object v0, v3, v1

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    aput-object v0, v4, v1

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_0
    monitor-exit v2

    return-object v4

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDeviceDescriptor(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 2
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 68
    sget-object v1, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDeviceDescriptorStorage;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
