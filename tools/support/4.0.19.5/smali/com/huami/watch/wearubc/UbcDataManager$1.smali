.class Lcom/huami/watch/wearubc/UbcDataManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/wearubc/UbcDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/wearubc/UbcDataManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/wearubc/UbcDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$1;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$1;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    invoke-static {p2}, Lcom/huami/watch/wearubc/IUbcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/wearubc/IUbcService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huami/watch/wearubc/UbcDataManager;->access$302(Lcom/huami/watch/wearubc/UbcDataManager;Lcom/huami/watch/wearubc/IUbcService;)Lcom/huami/watch/wearubc/IUbcService;

    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$1;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    invoke-static {p1}, Lcom/huami/watch/wearubc/UbcDataManager;->access$400(Lcom/huami/watch/wearubc/UbcDataManager;)Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$1;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    invoke-static {p1}, Lcom/huami/watch/wearubc/UbcDataManager;->access$400(Lcom/huami/watch/wearubc/UbcDataManager;)Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
