.class public Lcom/ingenic/iwds/datatransactor/ParcelTransactor;
.super Lcom/ingenic/iwds/datatransactor/DataTransactor;
.source "ParcelTransactor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/ingenic/iwds/datatransactor/DataTransactor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
    .param p4, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;",
            "Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ParcelTransactor;, "Lcom/ingenic/iwds/datatransactor/ParcelTransactor<TT;>;"
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/ParcelTransactor;->m_parcelableCreator:Landroid/os/Parcelable$Creator;

    .line 59
    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 97
    .local p0, "this":Lcom/ingenic/iwds/datatransactor/ParcelTransactor;, "Lcom/ingenic/iwds/datatransactor/ParcelTransactor<TT;>;"
    invoke-super {p0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 67
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 75
    return-void
.end method
