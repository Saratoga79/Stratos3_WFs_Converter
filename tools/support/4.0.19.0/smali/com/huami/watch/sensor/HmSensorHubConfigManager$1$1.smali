.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$1$1;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$1;


# direct methods
.method constructor <init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager$1;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$1$1;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 825
    const-string v0, "HmSensorHubManager"

    const-string v1, "HmCoreService died, kill self for reset mcu channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 827
    return-void
.end method
