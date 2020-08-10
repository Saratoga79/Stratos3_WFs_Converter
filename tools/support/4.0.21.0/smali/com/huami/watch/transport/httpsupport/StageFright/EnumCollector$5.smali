.class Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$5;
.super Ljava/lang/Object;
.source "EnumCollector.java"

# interfaces
.implements Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->dataFromUpper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$5;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportResult(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 266
    if-nez p1, :cond_2

    .line 268
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_1

    .line 269
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "WH-SERIAL_MODE"

    const-string v1, "onMessageDispatchResult succeed ! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    const-string v2, "onMessageDispatchResult succeed ! "

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_3

    .line 279
    const-string v0, "WH-SERIAL_MODE"

    const-string v1, "onMessageDispatchResult FAILED ! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    const-string v2, "onMessageDispatchResult FAILED ! "

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
