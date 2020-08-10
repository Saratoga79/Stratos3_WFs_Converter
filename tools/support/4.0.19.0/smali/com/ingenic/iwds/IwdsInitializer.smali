.class public Lcom/ingenic/iwds/IwdsInitializer;
.super Ljava/lang/Object;
.source "IwdsInitializer.java"


# static fields
.field private static a:Landroid/os/PowerManager;

.field private static b:Landroid/os/PowerManager$WakeLock;

.field private static c:Lcom/ingenic/iwds/IwdsInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/ingenic/iwds/IwdsInitializer;->c:Lcom/ingenic/iwds/IwdsInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static acquireWakeLock(I)Z
    .locals 4
    .param p0, "timeout_ms"    # I

    .prologue
    const/4 v0, 0x1

    .line 64
    sget-object v1, Lcom/ingenic/iwds/IwdsInitializer;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/ingenic/iwds/IwdsInitializer;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    sget-object v1, Lcom/ingenic/iwds/IwdsInitializer;->b:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final native classInitNative()V
.end method

.method public static getInstance()Lcom/ingenic/iwds/IwdsInitializer;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ingenic/iwds/IwdsInitializer;->c:Lcom/ingenic/iwds/IwdsInitializer;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/ingenic/iwds/IwdsInitializer;

    invoke-direct {v0}, Lcom/ingenic/iwds/IwdsInitializer;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/IwdsInitializer;->c:Lcom/ingenic/iwds/IwdsInitializer;

    .line 35
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/IwdsInitializer;->c:Lcom/ingenic/iwds/IwdsInitializer;

    return-object v0
.end method

.method private static final native nativeInit(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
.end method


# virtual methods
.method public initialize(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 3
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    const/4 v2, 0x1

    .line 39
    iget v0, p1, Lcom/ingenic/iwds/DeviceDescriptor;->devClass:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/ingenic/iwds/DeviceDescriptor;->devSubClass:I

    if-ne v0, v2, :cond_0

    .line 40
    invoke-static {}, Lcom/ingenic/iwds/IwdsApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/ingenic/iwds/IwdsInitializer;->a:Landroid/os/PowerManager;

    .line 41
    sget-object v0, Lcom/ingenic/iwds/IwdsInitializer;->a:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/ingenic/iwds/IwdsInitializer;->a:Landroid/os/PowerManager;

    const-string v1, "UniconnServer"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/ingenic/iwds/IwdsInitializer;->b:Landroid/os/PowerManager$WakeLock;

    .line 45
    :cond_0
    const-string v0, "iwds"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    invoke-static {p1, v2}, Lcom/ingenic/iwds/IwdsInitializer;->nativeInit(Lcom/ingenic/iwds/DeviceDescriptor;Z)V

    .line 48
    invoke-static {}, Lcom/ingenic/iwds/IwdsInitializer;->classInitNative()V

    .line 49
    return-void
.end method
