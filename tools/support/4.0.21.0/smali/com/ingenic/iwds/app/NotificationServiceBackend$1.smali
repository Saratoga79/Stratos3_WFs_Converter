.class Lcom/ingenic/iwds/app/NotificationServiceBackend$1;
.super Landroid/os/Handler;
.source "NotificationServiceBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/app/NotificationServiceBackend;-><init>()V
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
    .line 78
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$1;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 84
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;

    .line 85
    iget-object v1, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$1;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    iget-object v2, v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->a:Ljava/lang/String;

    iget v3, v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->b:I

    iget-object v0, v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->c:Lcom/ingenic/iwds/app/Note;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ingenic/iwds/app/NotificationServiceBackend;->onHandle(Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)Z

    goto :goto_0

    .line 91
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;

    .line 92
    iget-object v1, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$1;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    iget-object v2, v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->a:Ljava/lang/String;

    iget v0, v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->b:I

    invoke-virtual {v1, v2, v0}, Lcom/ingenic/iwds/app/NotificationServiceBackend;->onCancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 98
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;

    .line 99
    iget-object v1, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$1;->a:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    iget-object v0, v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/app/NotificationServiceBackend;->onCancelAll(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x13 -> :sswitch_0
        0x57 -> :sswitch_1
    .end sparse-switch
.end method
