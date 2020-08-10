.class Lcom/ingenic/iwds/app/ConnectionHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/app/ConnectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/app/ConnectionHelper;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/app/ConnectionHelper;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ingenic/iwds/app/ConnectionHelper$1;->a:Lcom/ingenic/iwds/app/ConnectionHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iwds.uniconnect.action.connected_address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v1, p0, Lcom/ingenic/iwds/app/ConnectionHelper$1;->a:Lcom/ingenic/iwds/app/ConnectionHelper;

    const-string v0, "DeviceDescriptor"

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    .line 53
    invoke-static {v1, v0}, Lcom/ingenic/iwds/app/ConnectionHelper;->access$000(Lcom/ingenic/iwds/app/ConnectionHelper;Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iwds.uniconnect.action.disconnected_address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/ingenic/iwds/app/ConnectionHelper$1;->a:Lcom/ingenic/iwds/app/ConnectionHelper;

    const-string v0, "DeviceDescriptor"

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    .line 59
    invoke-static {v1, v0}, Lcom/ingenic/iwds/app/ConnectionHelper;->access$100(Lcom/ingenic/iwds/app/ConnectionHelper;Lcom/ingenic/iwds/DeviceDescriptor;)V

    goto :goto_0
.end method
