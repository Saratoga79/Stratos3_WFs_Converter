.class abstract Lcom/ingenic/iwds/common/api/ServiceClient$b;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/common/api/ServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field public b:Landroid/content/Intent;

.field final synthetic c:Lcom/ingenic/iwds/common/api/ServiceClient;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/common/api/ServiceClient;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$b;->c:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ServiceClient$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceClient$b;-><init>(Lcom/ingenic/iwds/common/api/ServiceClient;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ingenic/iwds/common/api/ServiceClient$b;->b:Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public b()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ingenic/iwds/common/api/ServiceClient$b;->b:Landroid/content/Intent;

    return-object v0
.end method
