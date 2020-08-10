.class final Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;
.super Ljava/lang/Object;
.source "NotificationProxyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;Lcom/ingenic/iwds/app/INotificationServiceBackend;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->c:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    .line 53
    iput-object p3, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->b:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "NotificationProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backend died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->c:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;

    invoke-static {v0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
