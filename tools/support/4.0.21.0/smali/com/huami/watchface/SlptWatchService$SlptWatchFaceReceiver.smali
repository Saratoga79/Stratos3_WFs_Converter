.class public Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlptWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watchface/SlptWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlptWatchFaceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watchface/SlptWatchService;


# direct methods
.method public constructor <init>(Lcom/huami/watchface/SlptWatchService;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v8, "intentClockFace":Landroid/content/Intent;
    const/4 v14, 0x0

    .line 164
    .local v14, "type":I
    const/4 v5, 0x0

    .line 165
    .local v5, "clockPeriod":I
    const-wide/16 v12, 0x0

    .line 166
    .local v12, "stoptime":J
    const/4 v4, 0x0

    .line 167
    .local v4, "changeType":I
    const/4 v9, 0x0

    .line 168
    .local v9, "sportChange":I
    const/4 v7, 0x0

    .line 169
    .local v7, "enableSportMix":Z
    const/4 v11, 0x0

    .line 172
    .local v11, "trainMode":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watchface.SlptWatchService.enable.sportView"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 173
    const-string v15, "sport_view_type"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 174
    const-string v15, "key_multi_sport"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 175
    const-string v15, "clockperiod"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 177
    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    .line 178
    const-string v15, "timestamp"

    const-wide/16 v16, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 179
    const-string v15, "sport_change_to"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 182
    :cond_0
    const-string v15, "SlptWatchService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Enable sport slpt type ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " enableSportMix="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " stopTime="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " changeType= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " clockperiod="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-nez v14, :cond_2

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    packed-switch v14, :pswitch_data_0

    .line 201
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$300(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 205
    :goto_1
    const-string v15, "sys.watchface.sport"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$400(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    .line 208
    if-eqz v11, :cond_d

    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    .line 222
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watchface.SlptWatchService.disable.sportView"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 225
    :try_start_0
    const-string v15, "key_multi_sport"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 226
    const-string v15, "sport_view_type"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    .line 231
    :cond_4
    const-string v15, "SlptWatchService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "disable sport type ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " enableSportMix="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/huami/watchface/SlptWatchService;->isTrainMode(Landroid/content/Intent;)Z

    move-result v11

    .line 237
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v11, :cond_7

    .line 239
    :cond_6
    const-string v15, "SlptWatchService"

    const-string v16, "disable sport mode"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v15, "sys.watchface.sport"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 246
    :cond_7
    if-eqz v7, :cond_8

    const v15, 0x10008

    if-ne v14, v15, :cond_8

    .line 248
    const-string v15, "SlptWatchService"

    const-string v16, "disable sport mode"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v15, "sys.watchface.sport"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_8
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watchface.SlptWatchService.stop.sportView"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 260
    const-string v15, "SlptWatchService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "stop type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "sport_view_type"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " sport sview success ---------- mode "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/huami/watchface/SlptWatchService;->getSportMode(Landroid/content/Intent;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "timestamp"

    const-string v17, "timestamp"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "pause_view_type"

    const-string v17, "sport_view_type"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "sport_bundle"

    const-string v17, "sport_bundle"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 267
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 273
    const-string v15, "sys.watchface.sport"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watchface.SlptWatchService.restart.sportView"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 277
    const-string v15, "sport_view_type"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 278
    const-string v15, "SlptWatchService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resume type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "sport_view_type"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " sport sview success ----------!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v15, "SlptWatchService"

    const-string v16, " action com.huami.watchface.SlptWatchService.restart.sportView"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v15, "clockperiod"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 282
    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$600(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 284
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "clockperiod"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "train_unit"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/huami/watchface/SlptWatchService;->getTrainUnit(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    .line 298
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watchface.SlptWatchService.new_train_unit"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 300
    const-string v15, "SlptWatchService"

    const-string v16, " action com.huami.watchface.SlptWatchService.new_train_unit"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v15, "clockperiod"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$600(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "clockperiod"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "train_unit"

    const-string v17, "train_unit"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 308
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watch.action.SENSOR_WAKEUP"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 310
    const-string v15, "SlptWatchService"

    const-string v16, "sport already stoped"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$100(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/huami/watchface/SlptWatchService;->isTrainMode(Landroid/content/Intent;)Z

    move-result v11

    .line 192
    goto/16 :goto_1

    .line 194
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$200(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "sport_change_to"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const/4 v7, 0x1

    .line 198
    const-string v15, "SlptWatchService"

    const-string v16, "enable sport change sview success----------!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 213
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "intent_action"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "sport_view_type"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "clockperiod"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "key_multi_sport"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_2

    .line 252
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 269
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 270
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 287
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$300(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "sport_view_type"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "intent_action"

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "clockperiod"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "sport_bundle"

    const-string v17, "sport_bundle"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 314
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    if-nez v15, :cond_10

    .line 315
    const-string v15, "SlptWatchService"

    const-string v16, "sport already disabled"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 319
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "timestamp"

    const-string v17, "timestamp"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "pause_view_type"

    const-string v17, "sport_view_type"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v15, "SPORT_STATE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, "sportState":Ljava/lang/String;
    const-string v15, "SlptWatchService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sport auto state chagne = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "sport type="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "sport_view_type"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v15, "sport_auto_pause"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 328
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    .line 336
    .end local v10    # "sportState":Ljava/lang/String;
    :cond_11
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watchface.SlptWatchService.enter_gps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 337
    const-string v15, "SlptWatchService"

    const-string v16, "enter gps page "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$400(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "sport_type"

    const-string v17, "sport_type"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$400(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "battery_level"

    const-string v17, "battery_level"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    invoke-static {v15}, Lcom/huami/watchface/SlptWatchService;->access$400(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "remain_hour"

    const-string v17, "remain_hour"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$400(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.huami.watchface.SlptWatchService.leave_gps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 345
    const-string v15, "SlptWatchService"

    const-string v16, "exit  gps page "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$400(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 329
    .restart local v10    # "sportState":Ljava/lang/String;
    :cond_13
    const-string v15, "sport_auto_resume"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 331
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 332
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watchface/SlptWatchService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huami/watchface/SlptWatchService;->access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huami/watchface/SlptWatchService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_6

    .line 188
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
