.class Lcom/ingenic/iwds/common/api/ServiceClient$a$1;
.super Ljava/lang/Object;
.source "ServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/common/api/ServiceClient$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/common/api/ServiceClient$a;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/common/api/ServiceClient$a;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a$1;->a:Lcom/ingenic/iwds/common/api/ServiceClient$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a$1;->a:Lcom/ingenic/iwds/common/api/ServiceClient$a;

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a(Landroid/os/IBinder;)V

    .line 496
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a$1;->a:Lcom/ingenic/iwds/common/api/ServiceClient$a;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d()V

    .line 501
    return-void
.end method
