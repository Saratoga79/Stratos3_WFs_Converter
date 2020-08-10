.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;
.super Ljava/lang/Object;
.source "RemoteDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerRegistration"
.end annotation


# static fields
.field static final TYPE_APP:I = 0x1

.field static final TYPE_PROCESS:I = 0x2

.field static final TYPE_SETTING:I = 0x3

.field static final TYPE_STATUS:I


# instance fields
.field mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IInterface;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V
    .locals 3

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    .line 1631
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1632
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1633
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1634
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1635
    return-void
.end method


# virtual methods
.method addListener(ILjava/lang/String;Landroid/os/IInterface;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/IInterface;

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1639
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    return-void
.end method

.method isListenerRegistered(ILandroid/os/IInterface;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/os/IInterface;

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1649
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeListener(ILandroid/os/IInterface;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/os/IInterface;

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1644
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
