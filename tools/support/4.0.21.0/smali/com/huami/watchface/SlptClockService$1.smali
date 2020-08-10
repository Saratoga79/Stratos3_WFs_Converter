.class Lcom/huami/watchface/SlptClockService$1;
.super Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;
.source "SlptClockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watchface/SlptClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watchface/SlptClockService;


# direct methods
.method constructor <init>(Lcom/huami/watchface/SlptClockService;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllClock(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllClock error: is not current locker [m_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  [uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watchface/SlptClockService;->access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->clearAllClock()V

    goto :goto_0
.end method

.method public clearPictureGroup(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPictureGroup error: is not current locker [m_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  [uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watchface/SlptClockService;->access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->clearPictureGroup()V

    goto :goto_0
.end method

.method public disableLowBattery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->disableLowBattery()I

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableSlpt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 292
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0}, Lcom/huami/watchface/SlptClockService;->access$100(Lcom/huami/watchface/SlptClockService;)V

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableSportMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->disableSportMode()I

    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLowBattery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->enableLowBattery()I

    .line 419
    monitor-exit v1

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableSlpt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0}, Lcom/huami/watchface/SlptClockService;->access$000(Lcom/huami/watchface/SlptClockService;)V

    .line 287
    monitor-exit v1

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableSportMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->enableSportMode()I

    .line 405
    monitor-exit v1

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAlive()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    return-void
.end method

.method public lockService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$200(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1, p2}, Lcom/huami/watchface/SlptClockService;->access$800(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectClockIndex(Ljava/lang/String;I)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectClockIndex error: is not current locker [m_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  [uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watchface/SlptClockService;->access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-static {p2}, Lcom/ingenic/iwds/slpt/SlptClock;->selectClockIndex(I)V

    goto :goto_0
.end method

.method public setClockPeriod(I)V
    .locals 2
    .param p1, "periodSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setClockPeriod(I)V

    .line 321
    monitor-exit v1

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setClockSlptMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setClockSlptMode(I)V

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHourFormat(I)V
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setHourFormat(I)V

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeyWakeupStatus(I)V
    .locals 2
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setKeyWakeupStatus(I)V

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastHeartrate(I)V
    .locals 2
    .param p1, "heartrate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setLastHeartrate(I)V

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLongUpKeyStatus(I)V
    .locals 2
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setLongUpKeyStatus(I)V

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMeasurement(I)V
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setMeasurement(I)V

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSafeHeartrate(I)V
    .locals 2
    .param p1, "heartrate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setSafeHeartrate(I)V

    .line 356
    monitor-exit v1

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSportStopTime(J)V
    .locals 3
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 375
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    invoke-static {p1, p2}, Lcom/ingenic/iwds/slpt/SlptClock;->setSportStopTime(J)V

    .line 377
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTargetSportStep(I)V
    .locals 2
    .param p1, "step"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setTargetSportStep(I)V

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTodayDistance(F)V
    .locals 2
    .param p1, "distance"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setTodayDistance(F)V

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTotalDistance(F)V
    .locals 2
    .param p1, "distance"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setTotalDistance(F)V

    .line 342
    monitor-exit v1

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWakeUpVibratorStatus(I)V
    .locals 2
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/SlptClock;->setWakeUpVibratorStatus(I)V

    .line 398
    monitor-exit v1

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public slptIsEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-boolean v0, v0, Lcom/huami/watchface/SlptClockService;->slptIsEnabled:Z

    monitor-exit v1

    return v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$300(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCallback(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    sget-object v1, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1, p2}, Lcom/huami/watchface/SlptClockService;->access$900(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writePictureGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writePictureGroup error: is not current locker [m_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  [uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watchface/SlptClockService;->access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-static {p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPictureGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writePictureRle(Ljava/lang/String;[Lcom/ingenic/iwds/slpt/PictureInfo;[I)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "infos"    # [Lcom/ingenic/iwds/slpt/PictureInfo;
    .param p3, "mem"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writePictureRle error: is not current locker [m_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  [uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watchface/SlptClockService;->access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p2, p3}, Lcom/huami/watchface/SlptClockService;->access$700(Lcom/huami/watchface/SlptClockService;[Lcom/ingenic/iwds/slpt/PictureInfo;[I)Z

    goto :goto_0
.end method

.method public writePreDrawedPicture(Ljava/lang/String;Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writePictureRle error: is not current locker [m_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  [uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watchface/SlptClockService;->access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p2}, Lcom/huami/watchface/SlptClockService;->access$600(Lcom/huami/watchface/SlptClockService;Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)Z

    goto :goto_0
.end method

.method public writeSview(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "mem"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    invoke-static {v0, p1}, Lcom/huami/watchface/SlptClockService;->access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSview error: is not current locker [m_uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$1;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  [uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watchface/SlptClockService;->access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-static {p2}, Lcom/ingenic/iwds/slpt/SlptClock;->initSview([B)V

    goto :goto_0
.end method
