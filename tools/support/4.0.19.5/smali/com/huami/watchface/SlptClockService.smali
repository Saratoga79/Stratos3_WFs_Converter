.class public Lcom/huami/watchface/SlptClockService;
.super Landroid/app/Service;
.source "SlptClockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watchface/SlptClockService$Caller;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "HmSlptClockService"

.field static lock:Ljava/lang/Object;

.field static final m_const_uuid:Ljava/lang/String;


# instance fields
.field brightness:I

.field private callers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huami/watchface/SlptClockService$Caller;",
            ">;"
        }
    .end annotation
.end field

.field currentGroup:Ljava/lang/String;

.field currentPreIndex:I

.field currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

.field debugIsEnabled:Z

.field infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_uuid:Ljava/lang/String;

.field pictureMem:[I

.field pictureMemLength:I

.field pictureMemOffset:I

.field pictureMemrealLength:I

.field slptIsEnabled:Z

.field slptIsPaused:Z

.field stub:Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huami/watchface/SlptClockService;->lock:Ljava/lang/Object;

    .line 99
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watchface/SlptClockService;->m_const_uuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    iput v2, p0, Lcom/huami/watchface/SlptClockService;->brightness:I

    .line 63
    iput-boolean v2, p0, Lcom/huami/watchface/SlptClockService;->slptIsEnabled:Z

    .line 81
    iput-boolean v2, p0, Lcom/huami/watchface/SlptClockService;->slptIsPaused:Z

    .line 100
    sget-object v0, Lcom/huami/watchface/SlptClockService;->m_const_uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->currentGroup:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    .line 135
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->pictureMem:[I

    .line 136
    iput v1, p0, Lcom/huami/watchface/SlptClockService;->pictureMemrealLength:I

    .line 137
    iput v1, p0, Lcom/huami/watchface/SlptClockService;->pictureMemLength:I

    .line 138
    iput v2, p0, Lcom/huami/watchface/SlptClockService;->pictureMemOffset:I

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .line 241
    iput v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreIndex:I

    .line 281
    new-instance v0, Lcom/huami/watchface/SlptClockService$1;

    invoke-direct {v0, p0}, Lcom/huami/watchface/SlptClockService$1;-><init>(Lcom/huami/watchface/SlptClockService;)V

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->stub:Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    .line 651
    iput-boolean v2, p0, Lcom/huami/watchface/SlptClockService;->debugIsEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watchface/SlptClockService;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/huami/watchface/SlptClockService;->enableSlpt()V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watchface/SlptClockService;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/huami/watchface/SlptClockService;->disableSlpt()V

    return-void
.end method

.method static synthetic access$1000(Lcom/huami/watchface/SlptClockService;Lcom/huami/watchface/SlptClockService$Caller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Lcom/huami/watchface/SlptClockService$Caller;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->removeDiedCaller(Lcom/huami/watchface/SlptClockService$Caller;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->lockService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->unlockService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->isCurrentLocker(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huami/watchface/SlptClockService;Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->writePreDrawedPicture(Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/huami/watchface/SlptClockService;[Lcom/ingenic/iwds/slpt/PictureInfo;[I)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # [Lcom/ingenic/iwds/slpt/PictureInfo;
    .param p2, "x2"    # [I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/huami/watchface/SlptClockService;->writePictureRle([Lcom/ingenic/iwds/slpt/PictureInfo;[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/huami/watchface/SlptClockService;->addCaller(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptClockService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/huami/watchface/SlptClockService;->removeCaller(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z

    move-result v0

    return v0
.end method

.method private addCaller(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->findCaller(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 538
    const-string v0, "callback already registered"

    invoke-direct {p0, v0}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0

    .line 542
    :cond_0
    const-string v0, "HmSlptClockService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register callback is called [uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    new-instance v1, Lcom/huami/watchface/SlptClockService$Caller;

    invoke-direct {v1, p0, p1, p2}, Lcom/huami/watchface/SlptClockService$Caller;-><init>(Lcom/huami/watchface/SlptClockService;Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearWhenCurrentCallerDied()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/huami/watchface/SlptClockService;->resumeSlpt()V

    .line 168
    sget-object v0, Lcom/huami/watchface/SlptClockService;->m_const_uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watchface/SlptClockService;->pictureMemLength:I

    .line 172
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->debugIsEnabled:Z

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "HmSlptClockService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    return-void
.end method

.method private disableSlpt()V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsEnabled:Z

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->disableSlpt()I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsEnabled:Z

    goto :goto_0
.end method

.method private enableSlpt()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsEnabled:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->enableSlpt()I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsEnabled:Z

    goto :goto_0
.end method

.method private findCaller(Lcom/huami/watchface/SlptClockService$Caller;)I
    .locals 1
    .param p1, "caller"    # Lcom/huami/watchface/SlptClockService$Caller;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private findCaller(Ljava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 579
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watchface/SlptClockService$Caller;

    .line 581
    .local v0, "caller":Lcom/huami/watchface/SlptClockService$Caller;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    .end local v0    # "caller":Lcom/huami/watchface/SlptClockService$Caller;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 579
    .restart local v0    # "caller":Lcom/huami/watchface/SlptClockService$Caller;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .end local v0    # "caller":Lcom/huami/watchface/SlptClockService$Caller;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isCurrentLocker(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private lockService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    sget-object v1, Lcom/huami/watchface/SlptClockService;->m_const_uuid:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 106
    :cond_0
    const-string v0, "HmSlptClockService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockService is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/huami/watchface/SlptClockService;->pauseSlpt()V

    .line 109
    iput-object p1, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pauseSlpt()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsPaused:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->requestSlptDisplayPause()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsPaused:Z

    goto :goto_0
.end method

.method private removeCaller(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;

    .prologue
    const/4 v2, 0x0

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "caller":Lcom/huami/watchface/SlptClockService$Caller;
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->findCaller(Ljava/lang/String;)I

    move-result v1

    .line 553
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback not registered [uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    .line 571
    :goto_0
    return v2

    .line 558
    :cond_0
    const-string v3, "HmSlptClockService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregister callback is called [uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v3, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "caller":Lcom/huami/watchface/SlptClockService$Caller;
    check-cast v0, Lcom/huami/watchface/SlptClockService$Caller;

    .line 561
    .restart local v0    # "caller":Lcom/huami/watchface/SlptClockService$Caller;
    invoke-virtual {v0}, Lcom/huami/watchface/SlptClockService$Caller;->unlinkToDeath()V

    .line 562
    iget-object v3, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    iget-object v3, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 565
    const/4 v2, 0x1

    goto :goto_0

    .line 567
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller unregister callback when transfer [uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lcom/huami/watchface/SlptClockService;->clearWhenCurrentCallerDied()V

    goto :goto_0
.end method

.method private removeDiedCaller(Lcom/huami/watchface/SlptClockService$Caller;)Z
    .locals 4
    .param p1, "caller"    # Lcom/huami/watchface/SlptClockService$Caller;

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-direct {p0, p1}, Lcom/huami/watchface/SlptClockService;->findCaller(Lcom/huami/watchface/SlptClockService$Caller;)I

    move-result v0

    .line 591
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller is not find when remove: [uuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    .line 606
    :cond_0
    :goto_0
    return v1

    .line 596
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller is died [uuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->callers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller die when transfer [pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/huami/watchface/SlptClockService;->clearWhenCurrentCallerDied()V

    .line 606
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private requestPictureMem(I)V
    .locals 1
    .param p1, "newLength"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/huami/watchface/SlptClockService;->pictureMemrealLength:I

    if-le p1, v0, :cond_0

    .line 142
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->pictureMem:[I

    .line 143
    iput p1, p0, Lcom/huami/watchface/SlptClockService;->pictureMemrealLength:I

    .line 146
    :cond_0
    iput p1, p0, Lcom/huami/watchface/SlptClockService;->pictureMemLength:I

    .line 147
    return-void
.end method

.method private resumeSlpt()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsPaused:Z

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/ingenic/iwds/slpt/SlptClock;->requestSlptDisplayResume()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watchface/SlptClockService;->slptIsPaused:Z

    goto :goto_0
.end method

.method private unlockService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlock error : uuid not match [m_uuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  [uuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    const-string v0, "HmSlptClockService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockService is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/huami/watchface/SlptClockService;->resumeSlpt()V

    .line 123
    sget-object v0, Lcom/huami/watchface/SlptClockService;->m_const_uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warning(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-static {}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->getCallingPid()I

    move-result v0

    .line 641
    .local v0, "current":I
    const-string v1, "HmSlptClockService"

    const-string v2, "------------------------------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v1, "HmSlptClockService"

    const-string v2, "!!!! warning !!!! something is wrong!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v1, "HmSlptClockService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_uuid [uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watchface/SlptClockService;->m_uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] callingpid [pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v1, "HmSlptClockService"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v1, "HmSlptClockService"

    const-string v2, "------------------------------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method private writePictureRle([Lcom/ingenic/iwds/slpt/PictureInfo;[I)Z
    .locals 12
    .param p1, "infos"    # [Lcom/ingenic/iwds/slpt/PictureInfo;
    .param p2, "mem"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 175
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v5

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p1

    if-ge v1, v7, :cond_2

    .line 181
    iget-object v7, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v1    # "i":I
    :cond_2
    iget-object v7, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 186
    .local v0, "end":I
    new-instance v3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;

    iget v7, p0, Lcom/huami/watchface/SlptClockService;->pictureMemOffset:I

    invoke-direct {v3, v6, v7}, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;-><init>(II)V

    .line 188
    .local v3, "offset":Lcom/ingenic/iwds/slpt/RleBuffer$Offset;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 189
    iget-object v7, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ingenic/iwds/slpt/PictureInfo;

    .line 192
    .local v2, "info":Lcom/ingenic/iwds/slpt/PictureInfo;
    iget v7, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->width:I

    if-nez v7, :cond_3

    iget v7, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->height:I

    if-nez v7, :cond_3

    .line 193
    iget-object v7, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->pictureName:Ljava/lang/String;

    iget v8, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->width:I

    iget v9, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->height:I

    const/4 v10, 0x0

    iget v11, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->backgroundColor:I

    invoke-static {v7, v8, v9, v10, v11}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPicture(Ljava/lang/String;II[II)V

    .line 188
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    :cond_3
    iget v7, p0, Lcom/huami/watchface/SlptClockService;->pictureMemOffset:I

    if-nez v7, :cond_4

    .line 200
    iget v7, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->width:I

    iget v8, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->height:I

    mul-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/huami/watchface/SlptClockService;->requestPictureMem(I)V

    .line 203
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/huami/watchface/SlptClockService;->pictureMemOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->src:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huami/watchface/SlptClockService;->debug(Ljava/lang/String;)V

    .line 205
    iget v7, p0, Lcom/huami/watchface/SlptClockService;->pictureMemOffset:I

    iput v7, v3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->dst:I

    .line 206
    iget-object v7, p0, Lcom/huami/watchface/SlptClockService;->pictureMem:[I

    iget v8, p0, Lcom/huami/watchface/SlptClockService;->pictureMemLength:I

    invoke-static {v7, v8, p2, v3}, Lcom/ingenic/iwds/slpt/RleBuffer;->uncompress([II[ILcom/ingenic/iwds/slpt/RleBuffer$Offset;)V

    .line 209
    iget v7, v3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->dst:I

    iget v8, p0, Lcom/huami/watchface/SlptClockService;->pictureMemLength:I

    if-ge v7, v8, :cond_6

    .line 210
    iget v7, v3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->dst:I

    iput v7, p0, Lcom/huami/watchface/SlptClockService;->pictureMemOffset:I

    .line 211
    move v0, v1

    .line 223
    .end local v2    # "info":Lcom/ingenic/iwds/slpt/PictureInfo;
    :cond_5
    if-eqz v0, :cond_8

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v4, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ingenic/iwds/slpt/PictureInfo;>;"
    move v1, v0

    :goto_4
    iget-object v7, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 226
    iget-object v7, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 216
    .end local v4    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ingenic/iwds/slpt/PictureInfo;>;"
    .restart local v2    # "info":Lcom/ingenic/iwds/slpt/PictureInfo;
    :cond_6
    iget-object v7, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->pictureName:Ljava/lang/String;

    iget v8, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->width:I

    iget v9, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->height:I

    iget-object v10, p0, Lcom/huami/watchface/SlptClockService;->pictureMem:[I

    iget v11, v2, Lcom/ingenic/iwds/slpt/PictureInfo;->backgroundColor:I

    invoke-static {v7, v8, v9, v10, v11}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPicture(Ljava/lang/String;II[II)V

    .line 219
    iput v6, p0, Lcom/huami/watchface/SlptClockService;->pictureMemOffset:I

    goto/16 :goto_3

    .line 228
    .end local v2    # "info":Lcom/ingenic/iwds/slpt/PictureInfo;
    .restart local v4    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ingenic/iwds/slpt/PictureInfo;>;"
    :cond_7
    iput-object v4, p0, Lcom/huami/watchface/SlptClockService;->infoList:Ljava/util/ArrayList;

    .line 232
    .end local v4    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ingenic/iwds/slpt/PictureInfo;>;"
    :cond_8
    if-eqz p2, :cond_0

    iget v7, v3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->src:I

    array-length v8, p2

    if-eq v7, v8, :cond_0

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mem error: length "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " offset "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->dst:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huami/watchface/SlptClockService;->warning(Ljava/lang/String;)V

    move v5, v6

    .line 234
    goto/16 :goto_0
.end method

.method private writePreDrawedPicture(Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)Z
    .locals 9
    .param p1, "info"    # Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    if-nez v2, :cond_1

    .line 246
    const-string v5, "HmSlptClockService"

    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->getReciveGroup()Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    const-string v6, "error: not a new group"

    invoke-static {v5, v2, v6}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .line 251
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->getReciveGroup()Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPictureGroup(Ljava/lang/String;)V

    .line 259
    :goto_1
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    invoke-virtual {v2}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->getReciveGroup()Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    move-result-object v0

    .line 261
    .local v0, "group":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    :goto_2
    iget v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreIndex:I

    iget-object v5, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    invoke-virtual {v5}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->getRecivedSize()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 262
    iget v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreIndex:I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v1

    .line 263
    .local v1, "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->getName()Ljava/lang/String;

    move-result-object v2

    iget v5, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    iget v6, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    iget v7, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    iget-object v8, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    invoke-static {v2, v5, v6, v7, v8}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->addPicture(Ljava/lang/String;III[B)V

    .line 266
    iget v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreIndex:I

    goto :goto_2

    .end local v0    # "group":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    .end local v1    # "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    :cond_0
    move v2, v4

    .line 246
    goto :goto_0

    .line 253
    :cond_1
    const-string v2, "HmSlptClockService"

    iget-object v5, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    invoke-virtual {v5}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->isRecieveOk()Z

    move-result v5

    const-string v6, "error: not a new group"

    invoke-static {v2, v5, v6}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->mergeMemList(Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)V

    goto :goto_1

    .line 269
    .restart local v0    # "group":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    :cond_2
    iget-object v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    invoke-virtual {v2}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->isRecieveOk()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huami/watchface/SlptClockService;->currentPreInfo:Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .line 271
    iput v4, p0, Lcom/huami/watchface/SlptClockService;->currentPreIndex:I

    .line 274
    :cond_3
    return v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huami/watchface/SlptClockService;->stub:Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCallerDied(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "isCurrentCaller"    # Z

    .prologue
    .line 159
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    const-string v0, "HmSlptClockService"

    const-string v1, "onCreate ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "HmSlptClockService"

    const-string v1, "onDestroy ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 57
    const-string v0, "onStartCommand ---------------!"

    invoke-direct {p0, v0}, Lcom/huami/watchface/SlptClockService;->debug(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
