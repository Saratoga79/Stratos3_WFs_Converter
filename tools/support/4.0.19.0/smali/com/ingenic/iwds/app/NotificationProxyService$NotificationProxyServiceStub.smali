.class public Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;
.super Lcom/ingenic/iwds/app/INotificationProxyService$Stub;
.source "NotificationProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/app/NotificationProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationProxyServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/app/NotificationProxyService;

.field private b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/app/NotificationProxyService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/ingenic/iwds/app/NotificationProxyService;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->a:Lcom/ingenic/iwds/app/NotificationProxyService;

    invoke-direct {p0}, Lcom/ingenic/iwds/app/INotificationProxyService$Stub;-><init>()V

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    new-instance v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;-><init>(Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;)V

    iput-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->c:Ljava/util/HashMap;

    .line 139
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->c:Ljava/util/HashMap;

    const-string v1, "com.ingenic.launcher"

    const-string v2, "9207c288-dd9f-8fdd-0b88-3ea582bbbeb2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->c:Ljava/util/HashMap;

    const-string v1, "com.ingenic.iwds.test.notificationproxyservice.backend"

    const-string v2, "396bdc12-b834-bc70-f12c-1196ce75f99c"

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 157
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    :try_start_1
    iget-object v2, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(I)Lcom/ingenic/iwds/app/INotificationServiceBackend;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/ingenic/iwds/app/INotificationServiceBackend;->onCancelNotification(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b()V

    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 162
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 178
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 180
    :try_start_1
    iget-object v2, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(I)Lcom/ingenic/iwds/app/INotificationServiceBackend;

    move-result-object v2

    .line 181
    invoke-interface {v2, p1}, Lcom/ingenic/iwds/app/INotificationServiceBackend;->onCancelAllNotification(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b()V

    .line 191
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 183
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public notify(Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "note"    # Lcom/ingenic/iwds/app/Note;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 200
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 202
    :try_start_1
    iget-object v2, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(I)Lcom/ingenic/iwds/app/INotificationServiceBackend;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/ingenic/iwds/app/INotificationServiceBackend;->onHandleNotification(Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b()V

    .line 214
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 205
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public registerBackend(Lcom/ingenic/iwds/app/INotificationServiceBackend;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "backend"    # Lcom/ingenic/iwds/app/INotificationServiceBackend;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unqualified applicant: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    monitor-exit p0

    move v0, v1

    .line 236
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(Ljava/lang/String;)Lcom/ingenic/iwds/app/INotificationServiceBackend;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already registered applicant: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(Lcom/ingenic/iwds/app/INotificationServiceBackend;Ljava/lang/String;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterBackend(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unqualified applicant: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    monitor-exit p0

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    .line 252
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(Ljava/lang/String;)Lcom/ingenic/iwds/app/INotificationServiceBackend;

    move-result-object v0

    .line 253
    if-nez v0, :cond_2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such backend: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;->b:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(Lcom/ingenic/iwds/app/INotificationServiceBackend;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
