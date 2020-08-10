.class public final Lcom/huami/watch/transport/httpsupport/StageFright/Command;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field public static final CMD_ARRIVAL_TOKEN:Ljava/lang/String; = "_arrival_token"

.field public static final CMD_QUERY_TOKEN:Ljava/lang/String; = "_query_token"

.field public static final CMD_QUERY_UPLOAD_LIST:Ljava/lang/String; = "_query_sync_list"

.field public static final CMD_REPORT_UPLOAD_LIST:Ljava/lang/String; = "_report_sync_list"

.field public static final CMD_TRIGGER_POOR_MAN_UPLOAD_LIST:Ljava/lang/String; = "_come_on"

.field public static final CMD_TRIGGER_REPORT_FROM_CLIENT:Ljava/lang/String; = "_client_trigger_report"

.field public static final DATA_SYNC_TELL_RESULT:Ljava/lang/String; = "tell-internal-for-assist"

.field public static final DATA_SYNC_TRIGGER:Ljava/lang/String; = "sync-internal-for-assist"

.field public static final EXTRA_ASSIST_CLEAR_DATA:Ljava/lang/String; = "is_clear"

.field public static final EXTRA_ASSIST_HEALTH_TIME_FRAME:Ljava/lang/String; = "health_last_sync_time"

.field public static final INTERNAL_COMMAND:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    .line 60
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "sync-internal-for-assist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "tell-internal-for-assist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "_report_sync_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "_query_sync_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "_come_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "_client_trigger_report"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "_arrival_token"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    const-string v1, "_query_token"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isInternal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v1, Lcom/huami/watch/transport/httpsupport/StageFright/Command;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->INTERNAL_COMMAND:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
