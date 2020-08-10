.class public Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;
.super Ljava/lang/Object;
.source "GlobalDataSyncKicker.java"


# static fields
.field private static final IS_WATCH:Z

.field public static final KICK_CODE_APP_2_SRV:I = 0x1

.field public static final KICK_CODE_ASSIST_2_CLOUD:I = 0x8

.field public static final KICK_CODE_ASSIST_2_WATCH:I = 0x10

.field public static final KICK_CODE_ASSIST_SYNC_DATA:I = 0x40

.field public static final KICK_CODE_OF_ALL:I = 0x7d

.field public static final KICK_CODE_SRV_2_APP:I = 0x20

.field public static final KICK_CODE_SRV_2_ASSIST:I = 0x4

.field private static instance:Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

.field private static sTaskOfKiker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lclc/utils/taskmanager/TaskManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->IS_WATCH:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->instance:Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->instance:Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    .line 47
    :cond_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->instance:Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAssist2Cloud(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 171
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 172
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    sget-boolean v5, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v5, :cond_0

    .line 174
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 175
    .local v3, "mobileInfo":Landroid/net/NetworkInfo;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 176
    .local v4, "wifiInfo":Landroid/net/NetworkInfo;
    const-string v5, "WH-ASSIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "****handleAssist2Cloud \u540c\u6b65\uff0c\u5f53\u524d: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mobile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wifi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "active:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .end local v3    # "mobileInfo":Landroid/net/NetworkInfo;
    .end local v4    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 186
    .restart local v3    # "mobileInfo":Landroid/net/NetworkInfo;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 187
    .restart local v4    # "wifiInfo":Landroid/net/NetworkInfo;
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v5

    const-string v6, "WH-ASSIST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "****handleAssist2Cloud \u540c\u6b65\uff0c\u5f53\u524d: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mobile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "wifi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "active:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .end local v3    # "mobileInfo":Landroid/net/NetworkInfo;
    .end local v4    # "wifiInfo":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v1

    .line 199
    .local v1, "assist":Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    if-nez v1, :cond_3

    .line 200
    sget-boolean v5, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SRV:Z

    if-eqz v5, :cond_1

    .line 201
    const-string v5, "WH-SRV"

    const-string v6, "***\u540c\u6b65 WearHttpCompanion(\u8bf7\u6c42\u7f51\u7edc\u7528\u7684\u54df) \u521d\u59cb\u5316\u5931\u8d25 !*"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v5

    const-string v6, "WH-SRV"

    const-string v7, "***WearHttpCompanion(\u8bf7\u6c42\u7f51\u7edc\u7528\u7684\u54df) \u540c\u6b65 \u521d\u59cb\u5316\u5931\u8d25 !*"

    invoke-virtual {v5, v6, v7}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v1    # "assist":Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    :cond_2
    :goto_2
    return-void

    .line 211
    .restart local v1    # "assist":Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    :cond_3
    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tryProcessCachedRequestWhileNetWorkAvalible()V

    goto :goto_2

    .line 190
    .end local v1    # "assist":Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 179
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method private handleAssist2Srv()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v0

    .line 261
    .local v0, "assist":Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tryProcessCachedResponseWhileChannelAvalible()V

    goto :goto_0
.end method

.method private handleSrv2Assist(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 218
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.huami.watch.extra.DEVICE_CONNECTION_STATUS"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.huami.watch.extra.conn.ctrl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 223
    .local v0, "conned":Z
    :cond_1
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_2

    .line 224
    const-string v3, "WH-BLT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****handleSrv2Assist \u540c\u6b65\uff0c\u5f53\u524d: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_5

    const-string v2, "\u5df2\u8fde\u63a5"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-BLT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****handleSrv2Assist \u540c\u6b65\uff0c\u5f53\u524d: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_6

    const-string v2, "\u5df2\u8fde\u63a5"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz v0, :cond_4

    .line 233
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    move-result-object v1

    .line 234
    .local v1, "m":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    if-nez v1, :cond_7

    .line 235
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SRV:Z

    if-eqz v2, :cond_3

    .line 236
    const-string v2, "WH-SRV"

    const-string v3, "***Http Transport Manager \u521d\u59cb\u5316\u5931\u8d25 !*"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    const-string v4, "***Http Transport Manager \u521d\u59cb\u5316\u5931\u8d25 !*"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v1    # "m":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    :cond_4
    :goto_2
    return-void

    .line 224
    :cond_5
    const-string v2, "\u65ad\u5f00\u4e86"

    goto :goto_0

    .line 228
    :cond_6
    const-string v2, "\u65ad\u5f00\u4e86"

    goto :goto_1

    .line 245
    .restart local v1    # "m":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    :cond_7
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SRV:Z

    if-eqz v2, :cond_8

    .line 246
    const-string v2, "WH-SRV"

    const-string v3, "handleSrv2Assist===> \u5373\u5c06\u51fa\u53d1\u7f13\u5b58\u4efb\u52a1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_8
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    const-string v4, "handleSrv2Assist===> \u5373\u5c06\u51fa\u53d1\u7f13\u5b58\u4efb\u52a1"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->tryProcessCachedRequestWhilePhoneAvalible(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/content/Intent;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 274
    return-void
.end method


# virtual methods
.method public declared-synchronized genInternalEnumCollectAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 4
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetAction"    # Ljava/lang/String;
    .param p3, "cmdAction"    # Ljava/lang/String;

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string p1, "*"

    .line 289
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const-string p2, "*"

    .line 293
    :cond_1
    new-instance v0, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, p1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v1, "<!@@%C%&&!>"

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 295
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 298
    const-string v1, "target"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-object v0

    .line 285
    .end local v0    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized genInternalSyncAction(Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v0, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 280
    const-string v1, "new-sync"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-object v0

    .line 277
    .end local v0    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized kick(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "syncCode"    # I

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->IS_WATCH:Z

    if-eqz v0, :cond_5

    .line 56
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 58
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "WH-BLT"

    const-string v1, "[KICK]----> CODE_APP_2_SRV not implement ====> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-BLT"

    const-string v2, "[KICK]----> CODE_APP_2_SRV not implement ====> "

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 68
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "WH-BLT"

    const-string v1, "[KICK]----> KICK_CODE_SRV_2_ASSIST  ====> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-BLT"

    const-string v2, "[KICK]----> KICK_CODE_SRV_2_ASSIST ====> "

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->handleSrv2Assist(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_3
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_4

    .line 121
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_5
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_7

    .line 84
    :try_start_1
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v0, :cond_6

    .line 85
    const-string v0, "WH-BLT"

    const-string v1, "[KICK]----> KICK_CODE_ASSIST_2_CLOUD  ====> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_6
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-BLT"

    const-string v2, "[KICK]----> KICK_CODE_ASSIST_2_CLOUD ====> "

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->handleAssist2Cloud(Landroid/content/Context;)V

    .line 95
    :cond_7
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_9

    .line 97
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v0, :cond_8

    .line 98
    const-string v0, "WH-BLT"

    const-string v1, "[KICK]----> KICK_CODE_ASSIST_2_WATCH  ====> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_8
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-BLT"

    const-string v2, "[KICK]----> KICK_CODE_ASSIST_2_WATCH ====> "

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->handleAssist2Srv()V

    .line 108
    :cond_9
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_4

    .line 110
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v0, :cond_a

    .line 111
    const-string v0, "WH-BLT"

    const-string v1, "[KICK]----> KICK_CODE_ASSIST_SYNC_DATA  ====> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_a
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-BLT"

    const-string v2, "[KICK]----> KICK_CODE_ASSIST_SYNC_DATA ====> "

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized kick(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "j"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;
    .param p3, "withUploadToCloud"    # Z

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->targetAtPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->targetAtAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "targetWho":Ljava/lang/String;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->findProcessStateMonitor(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    move-result-object v0

    .line 148
    .local v0, "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .end local v0    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;-><init>()V

    .line 150
    .restart local v0    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    invoke-virtual {v0, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->inJack(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;)V

    .line 152
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->addReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 158
    :goto_0
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->beginNewSync(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 161
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tryProcessCachedRequestWhileNetWorkAvalible()V

    .line 162
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tryProcessCachedResponseWhileChannelAvalible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->inJack(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    .end local v0    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .end local v1    # "targetWho":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
