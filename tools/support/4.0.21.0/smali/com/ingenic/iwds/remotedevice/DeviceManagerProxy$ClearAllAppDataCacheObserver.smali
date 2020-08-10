.class Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllAppDataCacheObserver"
.end annotation


# instance fields
.field private mIndex:I

.field private mTotalClearCount:I

.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "clearPkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->mIndex:I

    .line 340
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->mTotalClearCount:I

    .line 341
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isSucceeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 346
    if-eqz p2, :cond_2

    move v5, v0

    .line 348
    :goto_0
    iget v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->mIndex:I

    .line 352
    iget v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->mIndex:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    move v4, v0

    .line 358
    :cond_0
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;

    iget v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->mTotalClearCount:I

    iget v2, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->mIndex:I

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;-><init>(IILjava/lang/String;II)V

    .line 360
    if-nez v4, :cond_1

    .line 361
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v1, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$600(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$ClearAllAppDataCacheObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 364
    return-void

    .line 346
    :cond_2
    const/16 v5, -0x77

    goto :goto_0
.end method
