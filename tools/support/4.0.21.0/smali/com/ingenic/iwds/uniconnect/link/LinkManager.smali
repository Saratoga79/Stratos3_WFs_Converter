.class public Lcom/ingenic/iwds/uniconnect/link/LinkManager;
.super Ljava/lang/Object;
.source "LinkManager.java"


# static fields
.field public static final ACTION_UNICONNECT_LINK_CONNECTED:Ljava/lang/String; = "action.uniconnect.LinkConnected"

.field public static final ACTION_UNICONNECT_LINK_DISCONNECTED:Ljava/lang/String; = "action.uniconnect.LinkDisconnected"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
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
.method constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterManager"    # Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->a:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->f:Ljava/util/ArrayList;

    .line 112
    invoke-static {p0}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->nativeSetLinkStateChangedHandler(Lcom/ingenic/iwds/uniconnect/link/LinkManager;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->e:Ljava/util/ArrayList;

    .line 118
    invoke-static {}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->nativeGetLinkTypes()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 121
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 122
    iget-object v5, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->a:Landroid/content/Context;

    const-string v2, "bond_store"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->c:Landroid/content/SharedPreferences;

    .line 126
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->d:Landroid/content/SharedPreferences$Editor;

    .line 127
    return-void
.end method

.method private static final native nativeBondAddress(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static final native nativeGetLinkTypes()Ljava/lang/String;
.end method

.method private static final native nativeGetRemoteAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static final native nativeSetLinkStateChangedHandler(Lcom/ingenic/iwds/uniconnect/link/LinkManager;)V
.end method

.method private static final native nativeStartServer(Ljava/lang/String;)Z
.end method

.method private static final native nativeStopServer(Ljava/lang/String;)V
.end method

.method private static final native nativeUnbond(Ljava/lang/String;)V
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->c:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 139
    invoke-static {p1, p2}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->nativeBondAddress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    invoke-static {p1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->nativeUnbond(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method c()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    return-object v1
.end method

.method c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 170
    invoke-static {p1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->nativeStartServer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method d()Lcom/ingenic/iwds/uniconnect/link/AdapterManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    invoke-static {p1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->nativeStopServer(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-static {p1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->nativeGetRemoteAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLinkStateChanged(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "isRoleAsClient"    # Z
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "linkTag"    # Ljava/lang/String;
    .param p4, "state"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b:Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/uniconnect/link/Adapter;

    .line 210
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter;->getLinkTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0, p4, p1, p2}, Lcom/ingenic/iwds/uniconnect/link/Adapter;->a(IZLjava/lang/String;)V

    .line 216
    :cond_1
    return-void
.end method
