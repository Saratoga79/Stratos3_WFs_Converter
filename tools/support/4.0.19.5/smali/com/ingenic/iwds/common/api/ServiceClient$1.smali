.class Lcom/ingenic/iwds/common/api/ServiceClient$1;
.super Lcom/ingenic/iwds/common/api/ServiceClient$b;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/common/api/ServiceClient;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/common/api/ServiceClient;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/common/api/ServiceClient;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$1;->a:Lcom/ingenic/iwds/common/api/ServiceClient;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ingenic/iwds/common/api/ServiceClient$b;-><init>(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ServiceClient$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/ingenic/iwds/common/api/ServiceManagerContext;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "com.ingenic.iwds.uniconnect.ConnectionService"

    return-object v0
.end method
