.class public Lcom/huami/watch/transport/WifiFTPLauncher;
.super Ljava/lang/Object;
.source "WifiFTPLauncher.java"


# static fields
.field private static final ACTION_START_SERVICE:Ljava/lang/String; = "start_service"

.field private static final MODULE_NAME_WIFI_FTP:Ljava/lang/String; = "com.huami.wififtp"

.field private static sWifiFTPLauncher:Lcom/huami/watch/transport/WifiFTPLauncher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataListener:Lcom/huami/watch/transport/Transporter$DataListener;

.field private mTransporter:Lcom/huami/watch/transport/Transporter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/huami/watch/transport/WifiFTPLauncher$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/WifiFTPLauncher$1;-><init>(Lcom/huami/watch/transport/WifiFTPLauncher;)V

    iput-object v0, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mDataListener:Lcom/huami/watch/transport/Transporter$DataListener;

    .line 27
    iput-object p1, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/huami/watch/transport/WifiFTPLauncher;->initTransporter()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/WifiFTPLauncher;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/WifiFTPLauncher;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/huami/watch/transport/WifiFTPLauncher;->startWifiFTPService()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lcom/huami/watch/transport/WifiFTPLauncher;->sWifiFTPLauncher:Lcom/huami/watch/transport/WifiFTPLauncher;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/huami/watch/transport/WifiFTPLauncher;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/WifiFTPLauncher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/WifiFTPLauncher;->sWifiFTPLauncher:Lcom/huami/watch/transport/WifiFTPLauncher;

    .line 20
    :cond_0
    return-void
.end method

.method private initTransporter()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mContext:Landroid/content/Context;

    const-string v1, "com.huami.wififtp"

    invoke-static {v0, v1}, Lcom/huami/watch/transport/Transporter;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/transport/Transporter;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mTransporter:Lcom/huami/watch/transport/Transporter;

    .line 33
    iget-object v0, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mTransporter:Lcom/huami/watch/transport/Transporter;

    iget-object v1, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mDataListener:Lcom/huami/watch/transport/Transporter$DataListener;

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/Transporter;->addDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V

    .line 34
    iget-object v0, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mTransporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0}, Lcom/huami/watch/transport/Transporter;->connectTransportService()V

    .line 35
    return-void
.end method

.method private startWifiFTPService()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huami.wififtp.service.WifiApService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.huami.wififtp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/huami/watch/transport/WifiFTPLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    return-void
.end method
