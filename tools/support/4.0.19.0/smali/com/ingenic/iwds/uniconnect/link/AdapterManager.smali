.class public Lcom/ingenic/iwds/uniconnect/link/AdapterManager;
.super Ljava/lang/Object;
.source "AdapterManager.java"


# static fields
.field private static a:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;


# instance fields
.field private b:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/uniconnect/link/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Context is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->c:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->b:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->d:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->b:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->c:Landroid/content/Context;

    invoke-static {v3, p0, v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter;->a(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;Ljava/lang/String;)Lcom/ingenic/iwds/uniconnect/link/Adapter;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ingenic/iwds/uniconnect/link/AdapterManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v1, "AdapterManager"

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Application context is null."

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 48
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->a:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->a:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->a:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/ingenic/iwds/uniconnect/link/LinkManager;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->b:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    return-object v0
.end method

.method b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/uniconnect/link/Adapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAdapter(Ljava/lang/String;)Lcom/ingenic/iwds/uniconnect/link/Adapter;
    .locals 4
    .param p1, "linkTag"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/uniconnect/link/Adapter;

    .line 63
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter;->getLinkTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_1
    const-string v0, "Adapter"

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupport link type, tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method
