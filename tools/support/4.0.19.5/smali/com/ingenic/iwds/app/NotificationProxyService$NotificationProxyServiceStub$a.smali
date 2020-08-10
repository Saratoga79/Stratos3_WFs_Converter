.class Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;
.super Ljava/lang/Object;
.source "NotificationProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/ingenic/iwds/app/INotificationServiceBackend;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;

    iget-object v0, v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ingenic/iwds/app/INotificationServiceBackend;
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;

    .line 72
    iget-object v2, v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v0, v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    .line 76
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/ingenic/iwds/app/INotificationServiceBackend;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;

    .line 102
    iget-object v4, v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    .line 115
    :goto_1
    return v0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    invoke-interface {v2}, Lcom/ingenic/iwds/app/INotificationServiceBackend;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 115
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public a(Lcom/ingenic/iwds/app/INotificationServiceBackend;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->a(Ljava/lang/String;)Lcom/ingenic/iwds/app/INotificationServiceBackend;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-interface {p1}, Lcom/ingenic/iwds/app/INotificationServiceBackend;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 87
    :try_start_0
    new-instance v2, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a$a;-><init>(Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;Lcom/ingenic/iwds/app/INotificationServiceBackend;Ljava/lang/String;)V

    .line 88
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 90
    iget-object v1, p0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
