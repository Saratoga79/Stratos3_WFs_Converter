.class Lcom/ingenic/iwds/app/NotificationServiceBackend$2;
.super Lcom/ingenic/iwds/app/INotificationServiceBackend$Stub;
.source "NotificationServiceBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/app/NotificationServiceBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/app/NotificationServiceBackend;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/app/NotificationServiceBackend;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    invoke-direct {p0}, Lcom/ingenic/iwds/app/INotificationServiceBackend$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelAllNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    invoke-static {v0}, Lcom/ingenic/iwds/app/NotificationServiceBackend;->a(Lcom/ingenic/iwds/app/NotificationServiceBackend;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;

    iget-object v3, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;-><init>(Lcom/ingenic/iwds/app/NotificationServiceBackend;Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public onCancelNotification(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    invoke-static {v0}, Lcom/ingenic/iwds/app/NotificationServiceBackend;->a(Lcom/ingenic/iwds/app/NotificationServiceBackend;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x57

    new-instance v2, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;

    iget-object v3, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;-><init>(Lcom/ingenic/iwds/app/NotificationServiceBackend;Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public onHandleNotification(Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "note"    # Lcom/ingenic/iwds/app/Note;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    invoke-static {v0}, Lcom/ingenic/iwds/app/NotificationServiceBackend;->a(Lcom/ingenic/iwds/app/NotificationServiceBackend;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    new-instance v2, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;

    iget-object v3, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;-><init>(Lcom/ingenic/iwds/app/NotificationServiceBackend;Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
