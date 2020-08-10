.class Lcom/ingenic/iwds/slpt/WatchFaceServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "WatchFaceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/slpt/WatchFaceServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/slpt/WatchFaceServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/slpt/WatchFaceServiceManager;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/WatchFaceServiceManager$1;->a:Lcom/ingenic/iwds/slpt/WatchFaceServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 33
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 0
    .param p1, "unexpected"    # Z

    .prologue
    .line 38
    return-void
.end method
