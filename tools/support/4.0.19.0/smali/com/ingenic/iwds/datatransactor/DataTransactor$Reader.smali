.class Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;
.super Ljava/lang/Object;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;
    }
.end annotation


# instance fields
.field private m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

.field private m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

.field private m_thread:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;

.field final synthetic this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Lcom/ingenic/iwds/datatransactor/DataTransactor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .param p2, "x1"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$1;

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)Lcom/ingenic/iwds/uniconnect/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    return-object v0
.end method


# virtual methods
.method public start(Lcom/ingenic/iwds/DeviceDescriptor;Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->m_deviceDescriptor:Lcom/ingenic/iwds/DeviceDescriptor;

    .line 730
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->m_connection:Lcom/ingenic/iwds/uniconnect/Connection;

    .line 732
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;-><init>(Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->m_thread:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;

    .line 733
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->m_thread:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->start()V

    .line 734
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader;->m_thread:Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor$Reader$ReadThread;->stopThread()V

    .line 738
    return-void
.end method
