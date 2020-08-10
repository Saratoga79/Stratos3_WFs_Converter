.class public Lcom/huami/watch/transport/TransporterBLE;
.super Lcom/huami/watch/transport/Transporter;
.source "TransporterBLE.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/huami/watch/transport/Transporter;-><init>()V

    .line 13
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/transport/Transporter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    new-instance v0, Lcom/huami/watch/transport/TransporterBLE;

    invoke-direct {v0}, Lcom/huami/watch/transport/TransporterBLE;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$DataListener;

    .prologue
    .line 34
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public removeDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$DataListener;

    .prologue
    .line 39
    return-void
.end method

.method public send(Ljava/lang/String;Lcom/huami/watch/transport/DataBundle;Lcom/huami/watch/transport/Transporter$DataSendResultCallback;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Lcom/huami/watch/transport/DataBundle;
    .param p3, "result"    # Lcom/huami/watch/transport/Transporter$DataSendResultCallback;

    .prologue
    .line 29
    return-void
.end method
