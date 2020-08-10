.class public Lcom/ingenic/iwds/datatransactor/SafeParcelTransactor;
.super Lcom/ingenic/iwds/datatransactor/DataTransactor;
.source "SafeParcelTransactor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ingenic/iwds/os/SafeParcelable;",
        ">",
        "Lcom/ingenic/iwds/datatransactor/DataTransactor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
    .param p4, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;",
            "Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/SafeParcelTransactor;, "Lcom/ingenic/iwds/datatransactor/SafeParcelTransactor<TT;>;"
    .local p2, "creator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/SafeParcelTransactor;->m_safeParcelableCreator:Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    .line 60
    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 98
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/SafeParcelTransactor;, "Lcom/ingenic/iwds/datatransactor/SafeParcelTransactor<TT;>;"
    invoke-super {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 68
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 76
    return-void
.end method
