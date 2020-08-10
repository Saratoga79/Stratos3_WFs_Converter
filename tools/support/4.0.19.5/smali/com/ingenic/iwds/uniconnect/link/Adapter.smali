.class public abstract Lcom/ingenic/iwds/uniconnect/link/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;
    }
.end annotation


# static fields
.field public static TAG_ANDROID_BT_DATA_CHANNEL:Ljava/lang/String;

.field public static TAG_BLE_DATA_CHANNEL:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

.field private c:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/uniconnect/link/Link;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "BLE data channel"

    sput-object v0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->TAG_BLE_DATA_CHANNEL:Ljava/lang/String;

    .line 38
    const-string v0, "Android BT data channel"

    sput-object v0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->TAG_ANDROID_BT_DATA_CHANNEL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterManager"    # Lcom/ingenic/iwds/uniconnect/link/AdapterManager;
    .param p3, "linkTag"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 234
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->a:Landroid/content/Context;

    .line 235
    iput-object p2, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->b:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    .line 236
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->b:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->a()Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->c:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    .line 237
    iput-object p3, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->d:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->e:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->f:Ljava/util/ArrayList;

    .line 242
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;Ljava/lang/String;)Lcom/ingenic/iwds/uniconnect/link/Adapter;
    .locals 5

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    sget-object v1, Lcom/ingenic/iwds/uniconnect/link/Adapter;->TAG_ANDROID_BT_DATA_CHANNEL:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;)V

    .line 216
    :cond_0
    :goto_0
    const-string v2, "Adapter"

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupport link type, tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 219
    return-object v0

    .line 212
    :cond_1
    sget-object v1, Lcom/ingenic/iwds/uniconnect/link/Adapter;->TAG_BLE_DATA_CHANNEL:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/BleAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/uniconnect/link/BleAdapter;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;)V

    goto :goto_0

    .line 216
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method a(IZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/uniconnect/link/Link;

    .line 258
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 260
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isBonded()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isServerStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    invoke-virtual {v0, p1, p3}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(ILjava/lang/String;)V

    .line 267
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Link;->getBondedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v0, p1, p3}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 270
    return-void
.end method

.method protected addRemoteDevice(Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public abstract cancelDiscovey()V
.end method

.method protected clearRemoteDevices()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    return-void
.end method

.method public createLink(Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/uniconnect/link/Link;
    .locals 3
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 128
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Device descriptor is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 131
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/Link;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->c:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/ingenic/iwds/uniconnect/link/Link;-><init>(Lcom/ingenic/iwds/uniconnect/link/LinkManager;Lcom/ingenic/iwds/DeviceDescriptor;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 134
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 137
    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyLink(Lcom/ingenic/iwds/uniconnect/link/Link;)V
    .locals 1
    .param p1, "link"    # Lcom/ingenic/iwds/uniconnect/link/Link;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/ingenic/iwds/uniconnect/link/Link;->isBonded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ingenic/iwds/uniconnect/link/Link;->isServerStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p1}, Lcom/ingenic/iwds/uniconnect/link/Link;->unbond()V

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 155
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    return-void

    .line 151
    :cond_2
    invoke-virtual {p1}, Lcom/ingenic/iwds/uniconnect/link/Link;->stopServer()V

    goto :goto_0
.end method

.method public abstract disable()V
.end method

.method public abstract enable()Z
.end method

.method public getBondedAddressStorage()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->c:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->c:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->d:Ljava/lang/String;

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    return-object v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getLinkTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLocalAddress()Ljava/lang/String;
.end method

.method public getRemoteDevices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Adapter;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract startDiscovery(Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;)I
.end method
