.class Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$2;
.super Lcom/ingenic/iwds/uniconnect/IConnectionCallBack$Stub;
.source "ConnectionServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->createConnection()Lcom/ingenic/iwds/uniconnect/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$2;->a:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/uniconnect/IConnectionCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method
