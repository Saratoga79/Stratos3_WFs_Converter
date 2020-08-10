.class Lcom/huami/watchface/SlptClockService$Caller;
.super Ljava/lang/Object;
.source "SlptClockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watchface/SlptClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Caller"
.end annotation


# instance fields
.field public callback:Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;

.field recipient:Landroid/os/IBinder$DeathRecipient;

.field final synthetic this$0:Lcom/huami/watchface/SlptClockService;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)V
    .locals 3
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    iput-object p1, p0, Lcom/huami/watchface/SlptClockService$Caller;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    new-instance v0, Lcom/huami/watchface/SlptClockService$Caller$1;

    invoke-direct {v0, p0}, Lcom/huami/watchface/SlptClockService$Caller$1;-><init>(Lcom/huami/watchface/SlptClockService$Caller;)V

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService$Caller;->recipient:Landroid/os/IBinder$DeathRecipient;

    .line 615
    iput-object p2, p0, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    .line 616
    iput-object p3, p0, Lcom/huami/watchface/SlptClockService$Caller;->callback:Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;

    .line 617
    invoke-interface {p3}, Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watchface/SlptClockService$Caller;->recipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 618
    return-void
.end method


# virtual methods
.method public unlinkToDeath()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$Caller;->callback:Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watchface/SlptClockService$Caller;->recipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 622
    return-void
.end method
