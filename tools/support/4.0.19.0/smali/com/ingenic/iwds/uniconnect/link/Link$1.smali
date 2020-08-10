.class Lcom/ingenic/iwds/uniconnect/link/Link$1;
.super Lcom/ingenic/iwds/uniconnect/IConnectionCallBack$Stub;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/link/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/uniconnect/link/Link;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/uniconnect/link/Link;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/Link$1;->a:Lcom/ingenic/iwds/uniconnect/link/Link;

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
    .line 121
    return-void
.end method
