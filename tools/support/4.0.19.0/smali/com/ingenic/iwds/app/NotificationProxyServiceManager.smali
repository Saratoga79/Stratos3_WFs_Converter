.class public Lcom/ingenic/iwds/app/NotificationProxyServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "NotificationProxyServiceManager.java"


# instance fields
.field private a:Lcom/ingenic/iwds/app/INotificationProxyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager$1;-><init>(Lcom/ingenic/iwds/app/NotificationProxyServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/app/NotificationProxyServiceManager;)Lcom/ingenic/iwds/app/INotificationProxyService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a:Lcom/ingenic/iwds/app/INotificationProxyService;

    return-object v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/app/NotificationProxyServiceManager;Lcom/ingenic/iwds/app/INotificationProxyService;)Lcom/ingenic/iwds/app/INotificationProxyService;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a:Lcom/ingenic/iwds/app/INotificationProxyService;

    return-object p1
.end method


# virtual methods
.method public cancel(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a:Lcom/ingenic/iwds/app/INotificationProxyService;

    invoke-virtual {p0}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ingenic/iwds/app/INotificationProxyService;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 3

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a:Lcom/ingenic/iwds/app/INotificationProxyService;

    invoke-virtual {p0}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/app/INotificationProxyService;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancelAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notify(ILcom/ingenic/iwds/app/Note;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "note"    # Lcom/ingenic/iwds/app/Note;

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "note is null"

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a:Lcom/ingenic/iwds/app/INotificationProxyService;

    invoke-virtual {p0}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/ingenic/iwds/app/INotificationProxyService;->notify(Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 80
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerBackend(Lcom/ingenic/iwds/app/NotificationServiceBackend;Ljava/lang/String;)Z
    .locals 4
    .param p1, "backend"    # Lcom/ingenic/iwds/app/NotificationServiceBackend;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "backend is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 117
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    const-string v0, "uuid is null or empty."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a:Lcom/ingenic/iwds/app/INotificationProxyService;

    iget-object v1, p1, Lcom/ingenic/iwds/app/NotificationServiceBackend;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    invoke-virtual {p0}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-interface {v0, v1, v3, p2}, Lcom/ingenic/iwds/app/INotificationProxyService;->registerBackend(Lcom/ingenic/iwds/app/INotificationServiceBackend;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 116
    goto :goto_0

    :cond_2
    move v1, v2

    .line 117
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerBackend: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public unregisterBackend(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "uuid is null or empty."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a:Lcom/ingenic/iwds/app/INotificationProxyService;

    invoke-virtual {p0}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/ingenic/iwds/app/INotificationProxyService;->unregisterBackend(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :goto_1
    return v1

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerBackend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
