.class public Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;
.super Ljava/lang/Object;
.source "TransLogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "LOG_TRANS"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "LOG_TRANS"

    invoke-virtual {v0, v1, p0}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "LOG_TRANS"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "LOG_TRANS"

    invoke-virtual {v0, v1, p0}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "LOG_TRANS"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "LOG_TRANS"

    invoke-virtual {v0, v1, p0}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static ii(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/translogutils/Util;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 13
    const-string v0, "LOG_TRANS_NEW"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "LOG_TRANS_NEW"

    invoke-virtual {v0, v1, p0}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
