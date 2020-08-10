.class Lcom/ingenic/iwds/slpt/SlptClockClient$2;
.super Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;
.source "SlptClockClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/SlptClockClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient$2;->this$0:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isAlive()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    return-void
.end method
