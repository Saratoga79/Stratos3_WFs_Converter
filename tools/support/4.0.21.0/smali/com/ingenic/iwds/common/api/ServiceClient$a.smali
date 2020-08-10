.class Lcom/ingenic/iwds/common/api/ServiceClient$a;
.super Landroid/os/Handler;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/common/api/ServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/common/api/ServiceClient;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/common/api/ServiceClient;)V
    .locals 1

    .prologue
    .line 425
    iput-object p1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    .line 491
    new-instance v0, Lcom/ingenic/iwds/common/api/ServiceClient$a$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/common/api/ServiceClient$a$1;-><init>(Lcom/ingenic/iwds/common/api/ServiceClient$a;)V

    iput-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ServiceClient$1;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceClient$a;-><init>(Lcom/ingenic/iwds/common/api/ServiceClient;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    monitor-exit p0

    return v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 475
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 477
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 478
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 481
    return-void
.end method

.method public a(Lcom/ingenic/iwds/common/api/ConnectFailedReason;)V
    .locals 2

    .prologue
    .line 466
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 468
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 469
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 472
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 450
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 452
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 454
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 455
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 458
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 460
    const/16 v1, 0x57

    iput v1, v0, Landroid/os/Message;->what:I

    .line 462
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 463
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 484
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 486
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 488
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 489
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 506
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 508
    :sswitch_0
    monitor-enter p0

    .line 509
    :try_start_0
    iget v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    if-ne v1, v4, :cond_3

    .line 510
    :cond_1
    iget-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d:Z

    if-eqz v0, :cond_2

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d:Z

    .line 513
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 516
    :cond_3
    :try_start_1
    iget v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    if-ne v1, v3, :cond_4

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c:Z

    .line 518
    monitor-exit p0

    goto :goto_0

    .line 521
    :cond_4
    const/4 v1, 0x1

    iput v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    .line 522
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    iget-object v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v1}, Lcom/ingenic/iwds/common/api/ServiceClient;->b(Lcom/ingenic/iwds/common/api/ServiceClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v2}, Lcom/ingenic/iwds/common/api/ServiceClient;->a(Lcom/ingenic/iwds/common/api/ServiceClient;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 527
    if-nez v1, :cond_0

    .line 528
    new-instance v1, Lcom/ingenic/iwds/common/api/ConnectFailedReason;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/common/api/ConnectFailedReason;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a(Lcom/ingenic/iwds/common/api/ConnectFailedReason;)V

    goto :goto_0

    .line 534
    :sswitch_1
    monitor-enter p0

    .line 535
    :try_start_2
    iget v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    if-nez v1, :cond_7

    .line 536
    :cond_5
    iget-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c:Z

    if-eqz v0, :cond_6

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c:Z

    .line 538
    :cond_6
    monitor-exit p0

    goto :goto_0

    .line 547
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 541
    :cond_7
    :try_start_3
    iget v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    if-ne v1, v0, :cond_8

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d:Z

    .line 543
    monitor-exit p0

    goto :goto_0

    .line 546
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    .line 547
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 549
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->b(Lcom/ingenic/iwds/common/api/ServiceClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 550
    invoke-virtual {p0}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d()V

    goto :goto_0

    .line 555
    :sswitch_2
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->c(Lcom/ingenic/iwds/common/api/ServiceClient;)Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;->onServiceConnected(Landroid/os/IBinder;)V

    .line 557
    monitor-enter p0

    .line 558
    const/4 v0, 0x3

    :try_start_4
    iput v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    .line 559
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 561
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->d(Lcom/ingenic/iwds/common/api/ServiceClient;)Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    move-result-object v0

    iget-object v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-interface {v0, v2}, Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;->onConnected(Lcom/ingenic/iwds/common/api/ServiceClient;)V

    .line 563
    iget-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c:Z

    if-eqz v0, :cond_9

    .line 564
    iput-boolean v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c:Z

    .line 566
    :cond_9
    iget-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d:Z

    if-eqz v0, :cond_0

    .line 567
    iput-boolean v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d:Z

    .line 568
    invoke-virtual {p0}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c()V

    goto/16 :goto_0

    .line 559
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 575
    :sswitch_3
    monitor-enter p0

    .line 576
    :try_start_6
    iget v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    if-ne v2, v4, :cond_b

    .line 579
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    .line 580
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 582
    iget-object v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v2}, Lcom/ingenic/iwds/common/api/ServiceClient;->d(Lcom/ingenic/iwds/common/api/ServiceClient;)Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    move-result-object v2

    iget-object v3, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-interface {v2, v3, v0}, Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;->onDisconnected(Lcom/ingenic/iwds/common/api/ServiceClient;Z)V

    .line 584
    iget-object v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v2}, Lcom/ingenic/iwds/common/api/ServiceClient;->c(Lcom/ingenic/iwds/common/api/ServiceClient;)Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;->onServiceDisconnected(Z)V

    .line 586
    iget-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d:Z

    if-eqz v0, :cond_a

    .line 587
    iput-boolean v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->d:Z

    .line 589
    :cond_a
    iget-boolean v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c:Z

    if-eqz v0, :cond_0

    .line 590
    iput-boolean v1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->c:Z

    .line 591
    invoke-virtual {p0}, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b()V

    goto/16 :goto_0

    .line 580
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 597
    :sswitch_4
    monitor-enter p0

    .line 598
    const/4 v0, 0x0

    :try_start_8
    iput v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->b:I

    .line 599
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 601
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-static {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->d(Lcom/ingenic/iwds/common/api/ServiceClient;)Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/common/api/ServiceClient$a;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/common/api/ConnectFailedReason;

    invoke-interface {v1, v2, v0}, Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;->onConnectFailed(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ConnectFailedReason;)V

    goto/16 :goto_0

    .line 599
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_b
    move v0, v1

    goto :goto_1

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xe -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x57 -> :sswitch_1
    .end sparse-switch
.end method
