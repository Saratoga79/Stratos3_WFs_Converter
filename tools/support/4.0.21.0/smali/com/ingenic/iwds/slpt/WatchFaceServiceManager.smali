.class public Lcom/ingenic/iwds/slpt/WatchFaceServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "WatchFaceServiceManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/ingenic/iwds/slpt/WatchFaceServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/slpt/WatchFaceServiceManager$1;-><init>(Lcom/ingenic/iwds/slpt/WatchFaceServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/WatchFaceServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 45
    return-void
.end method
