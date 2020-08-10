.class public Lcom/ingenic/iwds/uniconnect/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;,
        Lcom/ingenic/iwds/uniconnect/ConnectionService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/uniconnect/ConnectionService$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/ingenic/iwds/uniconnect/ConnectionService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/uniconnect/ConnectionService$a;-><init>(Lcom/ingenic/iwds/uniconnect/ConnectionService;Lcom/ingenic/iwds/uniconnect/ConnectionService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService;->a:Lcom/ingenic/iwds/uniconnect/ConnectionService$a;

    .line 58
    return-void
.end method

.method static synthetic a(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I
    .locals 1

    .prologue
    .line 33
    invoke-static/range {p0 .. p5}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->nativeRead(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)J
    .locals 2

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->nativeCreateConnectionByUuid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->nativeDestroyConnection(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;J)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->nativeGetMaxPayloadSize(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic b(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I
    .locals 1

    .prologue
    .line 33
    invoke-static/range {p0 .. p5}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->nativeWrite(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method static synthetic c(Ljava/lang/String;J)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->nativeAvailable(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic d(Ljava/lang/String;J)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->nativeHandshake(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private static final native nativeAvailable(Ljava/lang/String;J)I
.end method

.method private static final native nativeCreateConnectionByUuid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)J
.end method

.method private static final native nativeDestroyConnection(Ljava/lang/String;J)V
.end method

.method private static final native nativeFlush(Ljava/lang/String;J)I
.end method

.method private static final native nativeGetMaxPayloadSize(Ljava/lang/String;J)I
.end method

.method private static final native nativeHandshake(Ljava/lang/String;J)I
.end method

.method private static final native nativeRead(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I
.end method

.method private static final native nativeWrite(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string v0, "onBind()"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService;->a:Lcom/ingenic/iwds/uniconnect/ConnectionService$a;

    return-object v0
.end method
