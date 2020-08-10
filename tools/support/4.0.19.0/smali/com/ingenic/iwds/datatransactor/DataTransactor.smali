.class public Lcom/ingenic/iwds/datatransactor/DataTransactor;
.super Lcom/ingenic/iwds/datatransactor/TransactorParcelableCreator;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;,
        Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ingenic/iwds/datatransactor/TransactorParcelableCreator",
        "<",
        "Landroid/os/Parcelable;",
        "Lcom/ingenic/iwds/os/SafeParcelable;",
        ">;"
    }
.end annotation


# instance fields
.field private m_callbackHandler:Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

.field private m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

.field private m_helper:Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

.field private m_obexCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;

.field private m_reader:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

.field private m_sender:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

.field private m_tranfserAdapterObserver:Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

.field private m_uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
    .param p3, "interruptCallback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 127
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/TransactorParcelableCreator;-><init>()V

    .line 128
    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Callback is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 129
    if-nez p3, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "Callback is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 131
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "Uuid is null or empty."

    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 134
    iput-object p4, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_uuid:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_helper:Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    .line 136
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    invoke-direct {v0, p0, p2, p3}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_callbackHandler:Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    .line 138
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_reader:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .line 139
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_sender:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    .line 140
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    .line 142
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_tranfserAdapterObserver:Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

    .line 143
    return-void

    :cond_2
    move v0, v2

    .line 128
    goto :goto_0

    :cond_3
    move v0, v2

    .line 129
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tranactorCallback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
    .param p3, "obexCallback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/TransactorParcelableCreator;-><init>()V

    .line 168
    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "DataTransactorCallback is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 170
    if-nez p3, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "ObjectExchangeCallback is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 173
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "Uuid is null or empty."

    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 176
    iput-object p4, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_uuid:Ljava/lang/String;

    .line 177
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_helper:Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    .line 178
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    invoke-direct {v0, p0, p2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_callbackHandler:Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    .line 180
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_reader:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .line 181
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_sender:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    .line 182
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    .line 184
    iput-object p3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_obexCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;

    .line 185
    return-void

    :cond_2
    move v0, v2

    .line 168
    goto :goto_0

    :cond_3
    move v0, v2

    .line 170
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/TransactorParcelableCreator;-><init>()V

    .line 90
    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Callback is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 92
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "Uuid is null or empty."

    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 95
    iput-object p3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_uuid:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_helper:Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    .line 97
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    invoke-direct {v0, p0, p2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_callbackHandler:Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    .line 99
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_reader:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .line 100
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_sender:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    .line 101
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    .line 103
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

    invoke-direct {v0, p0, v4}, Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_tranfserAdapterObserver:Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

    .line 104
    return-void

    :cond_2
    move v0, v2

    .line 90
    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_sender:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/DeviceDescriptor;Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .param p1, "x1"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "x2"    # Lcom/ingenic/iwds/uniconnect/Connection;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->startReader(Lcom/ingenic/iwds/DeviceDescriptor;Lcom/ingenic/iwds/uniconnect/Connection;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stopReader()V

    return-void
.end method

.method static synthetic access$1600(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .param p1, "x1"    # Lcom/ingenic/iwds/uniconnect/Connection;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->startSender(Lcom/ingenic/iwds/uniconnect/Connection;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stopSender()V

    return-void
.end method

.method static synthetic access$400(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_uuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_obexCallback:Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_tranfserAdapterObserver:Lcom/ingenic/iwds/datatransactor/DataTransactor$TransferAdapterObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_callbackHandler:Lcom/ingenic/iwds/datatransactor/DataTransactor$CallbackHandler;

    return-object v0
.end method

.method private startReader(Lcom/ingenic/iwds/DeviceDescriptor;Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_reader:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->start(Lcom/ingenic/iwds/DeviceDescriptor;Lcom/ingenic/iwds/uniconnect/Connection;)V

    .line 900
    return-void
.end method

.method private startSender(Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_sender:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->start(Lcom/ingenic/iwds/uniconnect/Connection;)V

    .line 908
    return-void
.end method

.method private stopReader()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_reader:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->stop()V

    .line 904
    return-void
.end method

.method private stopSender()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_sender:Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Sender;->stop()V

    .line 912
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->cancelAll()V

    .line 215
    return-void
.end method

.method protected filerDeviceDescriptor(Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 0
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 442
    return-object p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1035
    invoke-virtual {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 1036
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_helper:Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->isStarted()Z

    move-result v0

    return v0
.end method

.method public send(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 241
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "file is null."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/io/File;I)V

    .line 243
    return-void

    :cond_0
    move v0, v1

    .line 241
    goto :goto_0
.end method

.method public send(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "index"    # I

    .prologue
    .line 236
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "file is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->send(Ljava/io/File;I)V

    .line 238
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 226
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Object is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 227
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 228
    check-cast p1, Ljava/io/File;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/io/File;)V

    .line 233
    :goto_1
    return-void

    .line 226
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_controller:Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Controller;->send(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_helper:Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->start()V

    .line 192
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor;->m_helper:Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Helper;->stop()V

    .line 199
    return-void
.end method
