.class public Lcom/ingenic/iwds/common/exception/SerializeException;
.super Lcom/ingenic/iwds/common/exception/IwdsException;
.source "SerializeException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ingenic/iwds/common/exception/IwdsException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/exception/IwdsException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/common/exception/IwdsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/exception/IwdsException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
