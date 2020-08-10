.class public abstract Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.super Ljava/lang/Object;
.source "ServiceManagerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "com.ingenic.iwds.notification.clicked"

.field public static final SERVICE_CLOUD:Ljava/lang/String; = "service_cloud"

.field public static final SERVICE_CONNECTION:Ljava/lang/String; = "service_connection"

.field public static final SERVICE_DEVICE_MANAGER:Ljava/lang/String; = "service_device_manager"

.field public static final SERVICE_NOTIFICATION_PROXY:Ljava/lang/String; = "service_notification_proxy"

.field public static final SERVICE_REMOTE_BROADCAST:Ljava/lang/String; = "service_remote_broadcast"

.field public static final SERVICE_REMOTE_DEVICE:Ljava/lang/String; = "service_remote_device"

.field public static final SERVICE_REMOTE_LOCATION:Ljava/lang/String; = "service_remote_location"

.field public static final SERVICE_REMOTE_SEARCH:Ljava/lang/String; = "service_remote_search"

.field public static final SERVICE_REMOTE_SENSOR:Ljava/lang/String; = "service_remote_sensor"

.field public static final SERVICE_REMOTE_SPEECH:Ljava/lang/String; = "service_remote_speech"

.field public static final SERVICE_REMOTE_WAKELOCK:Ljava/lang/String; = "service_remote_wakelock"

.field public static final SERVICE_SENSOR:Ljava/lang/String; = "service_sensor"

.field public static final SERVICE_SLPT_WATCH_FACE:Ljava/lang/String; = "service_slpt_watchface"

.field public static final SERVICE_VIBRATE:Ljava/lang/String; = "service_vibrate"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Context can not be null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/ingenic/iwds/common/api/ServiceManagerContext;->mContext:Landroid/content/Context;

    .line 102
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceManagerContext;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceManagerContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method onServiceConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceManagerContext;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;->onServiceConnected(Landroid/os/IBinder;)V

    .line 113
    return-void
.end method

.method onServiceDisconnected(Z)V
    .locals 1
    .param p1, "unexpected"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceManagerContext;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;->onServiceDisconnected(Z)V

    .line 117
    return-void
.end method
