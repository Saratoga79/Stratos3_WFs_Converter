.class Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;
.super Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;
.source "RemoteWakeLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(IIJ)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(IIJ)V

    .line 62
    return-void
.end method

.method public destroyRemoteWakeLock(II)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(II)V

    .line 57
    return-void
.end method

.method public newRemoteWakeLock(IIILjava/lang/String;)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "levelAndFlags"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(IIILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public registerRemoteWakeLockCallback(Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)I

    move-result v0

    return v0
.end method

.method public releaseWakeLock(II)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b(II)V

    .line 67
    return-void
.end method

.method public unregisterRemoteWakeLockCallback(I)V
    .locals 1
    .param p1, "callerId"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(I)V

    .line 47
    return-void
.end method
