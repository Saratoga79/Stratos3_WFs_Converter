.class public Lcom/ingenic/iwds/utils/IwdsAssert;
.super Ljava/lang/Object;
.source "IwdsAssert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private die()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public static dieIf(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 2
    .param p0, "who"    # Ljava/lang/Object;
    .param p1, "condition"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "============= IWDS Assert Failed ============"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "============================================="

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 44
    const-string v0, "============== IWDS Assert End =============="

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    check-cast v0, Lcom/ingenic/iwds/utils/IwdsAssert;

    invoke-direct {v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->die()V

    goto :goto_0
.end method

.method public static dieIf(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "condition"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "============= IWDS Assert Failed ============"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "============================================="

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 70
    const-string v0, "============== IWDS Assert End =============="

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    check-cast v0, Lcom/ingenic/iwds/utils/IwdsAssert;

    invoke-direct {v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->die()V

    goto :goto_0
.end method
