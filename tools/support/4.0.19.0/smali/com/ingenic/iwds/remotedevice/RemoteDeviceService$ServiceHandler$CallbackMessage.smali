.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;
.super Ljava/lang/Object;
.source "RemoteDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1436
    .local p0, "this":Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;, "Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage<TT;>;"
    .local p3, "callback":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->uuid:Ljava/lang/String;

    .line 1438
    iput-object p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler$CallbackMessage;->callback:Ljava/lang/Object;

    .line 1439
    return-void
.end method
