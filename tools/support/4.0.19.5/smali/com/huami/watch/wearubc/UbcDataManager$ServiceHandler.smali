.class Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/wearubc/UbcDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/wearubc/UbcDataManager;


# direct methods
.method public constructor <init>(Lcom/huami/watch/wearubc/UbcDataManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "UbcDataManager"

    const-string v0, "unknow message"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    invoke-static {p1}, Lcom/huami/watch/wearubc/UbcDataManager;->access$200(Lcom/huami/watch/wearubc/UbcDataManager;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huami/watch/wearubc/UbcDataManager;->access$100(Lcom/huami/watch/wearubc/UbcDataManager;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->this$0:Lcom/huami/watch/wearubc/UbcDataManager;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/huami/watch/wearubc/UbcDataManager;->access$000(Lcom/huami/watch/wearubc/UbcDataManager;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
