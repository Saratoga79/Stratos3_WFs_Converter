.class Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;
.super Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;
.source "VibrateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartvibrate/VibrateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrateServiceStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/smartvibrate/VibrateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/smartvibrate/VibrateService$1;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;-><init>()V

    return-void
.end method

.method private static final native nativeSpecialVibrate([I)I
.end method


# virtual methods
.method public Drv2605Vibrate([I)I
    .locals 1
    .param p1, "effect"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;->nativeSpecialVibrate([I)I

    move-result v0

    return v0
.end method
