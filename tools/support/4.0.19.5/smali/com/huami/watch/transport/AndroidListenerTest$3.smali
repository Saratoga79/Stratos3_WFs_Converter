.class Lcom/huami/watch/transport/AndroidListenerTest$3;
.super Ljava/lang/Object;
.source "AndroidListenerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/AndroidListenerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/AndroidListenerTest;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/AndroidListenerTest;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/huami/watch/transport/AndroidListenerTest$3;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "ob":Lcom/huami/watch/transport/AndroidListenerTest$SendData;
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/AndroidListenerTest$3;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-static {v1}, Lcom/huami/watch/transport/AndroidListenerTest;->access$300(Lcom/huami/watch/transport/AndroidListenerTest;)[Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/AndroidListenerTest$3;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-static {v2}, Lcom/huami/watch/transport/AndroidListenerTest;->access$400(Lcom/huami/watch/transport/AndroidListenerTest;)I

    move-result v2

    aget-object v0, v1, v2

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const-string v1, "AndroidListenerTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTask find error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/AndroidListenerTest$3;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-static {v3}, Lcom/huami/watch/transport/AndroidListenerTest;->access$400(Lcom/huami/watch/transport/AndroidListenerTest;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 127
    :cond_0
    const-string v1, "AndroidListenerTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/huami/watch/transport/AndroidListenerTest$SendData;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/AndroidListenerTest$3;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-static {v3}, Lcom/huami/watch/transport/AndroidListenerTest;->access$400(Lcom/huami/watch/transport/AndroidListenerTest;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->getInstance(Landroid/content/Context;)Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;

    move-result-object v1

    iget-object v2, v0, Lcom/huami/watch/transport/AndroidListenerTest$SendData;->uuid:Ljava/lang/String;

    iget-object v3, v0, Lcom/huami/watch/transport/AndroidListenerTest$SendData;->data:[B

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/ble/trasnfer/MCUBLEDataTransfor;->sendDataByMCUBLE(Ljava/lang/String;[B)V

    goto :goto_0
.end method
