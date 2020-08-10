.class Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;
.super Landroid/content/BroadcastReceiver;
.source "TrafficStasis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->initTiming(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->access$300(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v2, "Traffic"

    const-string v3, "=======ClEAR--FOR--TIMING---======"

    invoke-virtual {v0, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with2(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "traffic_stat.xml"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 240
    .local v14, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v13

    .line 241
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->access$300(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v14, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, -0x2

    invoke-interface/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;->onTrafficExtract(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 246
    .end local v1    # "key":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v14    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->resetAll()V

    .line 248
    const/4 v4, 0x0

    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    const-wide/32 v8, 0x5265c00

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    invoke-static/range {v3 .. v11}, Lcom/huami/watch/transport/httpsupport/AlarmDriver;->inject(Landroid/content/Context;IIIIJLandroid/content/Intent;I)V

    .line 249
    return-void
.end method
