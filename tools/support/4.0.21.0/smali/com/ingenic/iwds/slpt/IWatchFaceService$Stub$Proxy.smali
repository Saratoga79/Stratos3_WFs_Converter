.class Lcom/ingenic/iwds/slpt/IWatchFaceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWatchFaceService.java"

# interfaces
.implements Lcom/ingenic/iwds/slpt/IWatchFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/IWatchFaceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/IWatchFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 54
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/IWatchFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "com.ingenic.iwds.slpt.IWatchFaceService"

    return-object v0
.end method
