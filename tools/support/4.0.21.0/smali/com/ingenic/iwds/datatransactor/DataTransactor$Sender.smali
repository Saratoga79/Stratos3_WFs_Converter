.class Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;
.super Ljava/lang/Object;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;
    }
.end annotation


# static fields
.field public static final MSG_QUIT:I = 0x1

.field public static final MSG_SEND:I


# instance fields
.field private m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

.field private m_handler:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

.field private m_thread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .param p2, "x1"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$1;

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;)Lcom/ingenic/iwds/uniconnect/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_handler:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public send(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "index"    # I

    .prologue
    .line 629
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 639
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_handler:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 634
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 635
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 636
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 638
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public send(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_handler:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 622
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 623
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public start(Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 589
    :cond_0
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    .line 591
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataTransactor_sender: UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 592
    invoke-static {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->access$400(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-virtual {v2}, Lcom/ingenic/iwds/uniconnect/Connection;->getPort()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    .line 593
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 595
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_handler:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_handler:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_1
    iput-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_handler:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender$SendHandler;

    .line 612
    iput-object v2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->m_thread:Landroid/os/HandlerThread;

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    goto :goto_1
.end method
