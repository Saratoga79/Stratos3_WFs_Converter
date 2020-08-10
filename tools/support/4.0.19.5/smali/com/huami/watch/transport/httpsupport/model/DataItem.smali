.class public Lcom/huami/watch/transport/httpsupport/model/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# static fields
.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final FLAG_AUTO_FILL_HEADER:I = 0x10

.field public static final FLAG_BIG_DATA:I = 0x8000

.field public static final FLAG_CACHE:I = 0x1

.field public static final FLAG_CACHE_PROCESS_IN_MEMORY:I = 0x800

.field public static final FLAG_COMBO_REQ:I = 0x200

.field public static final FLAG_COMPRESS:I = 0x2

.field public static final FLAG_DATA_SYNC_FLOW:I = 0x2000

.field public static final FLAG_DATA_SYNC_REALTIME:I = 0x10000

.field public static final FLAG_DATA_TRANSFORMABLE:I = 0x1000

.field public static final FLAG_DECODE_BE_SEND:I = 0x8

.field public static final FLAG_DEL_FROM_DB:I = 0x4

.field public static final FLAG_EXTRA_DATA_TO_FILE:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_HAS_EXTRA_FILE:I = 0x400

.field public static final FLAG_MASK:I = 0xcf

.field public static final FLAG_ONE_SHOT:I = 0x80

.field public static final FLAG_RECALL_EXTRA_DATA:I = 0x40

.field public static final FLAG_SERIAL_MODE:I = 0x4000

.field public static final HTTP_CODE_ERROR:I = 0x3e7

.field public static final HTTP_METHOD_GET:Ljava/lang/String; = "get"

.field public static final HTTP_METHOD_POST:Ljava/lang/String; = "post"

.field public static final HTTP_METHOD_PUT:Ljava/lang/String; = "put"

.field public static final PREFIX_COMPRESS:Ljava/lang/String; = "<!@@%C%&&!>"

.field public static final STATE_LOOK_SIDE_BLT:I = 0x7

.field public static final STATE_LOOK_SIDE_NET:I = 0x6

.field public static final STATE_NEW:I = 0x5

.field public static final STATE_PROCESSED_BY_CLOUD:I = 0x0

.field public static final STATE_WAITING_FOR_WIFI_TRANS:I = 0x9

.field public static final STATE_WAITING_IN_APP_FOR_SERVICE_CONNED:I = 0x8

.field public static final STATE_WAITING_IN_COMPANION_2_HTTP_SERVER:I = 0x4

.field public static final STATE_WAITING_IN_COMPANION_2_WATCH:I = 0x3

.field public static final STATE_WAITING_IN_WEARSERVICE_2_APPCLIENT:I = 0x2

.field public static final STATE_WAITING_IN_WEARSERVICE_2_ASSIST:I = 0x1


# instance fields
.field private action:Ljava/lang/String;

.field private code:I

.field private data:Ljava/lang/String;

.field private extra:Lorg/json/JSONObject;

.field private flags:I

.field private identifier:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private state:I

.field private timeout:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "data"    # Ljava/lang/String;

    .prologue
    .line 143
    if-eqz p5, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "cache"    # Z

    .prologue
    .line 147
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "cache"    # Z
    .param p7, "compress"    # Z

    .prologue
    .line 152
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "cache"    # Z
    .param p7, "compress"    # Z
    .param p8, "timeout"    # J

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "flags":I
    if-eqz p6, :cond_0

    .line 167
    or-int/lit8 v0, v0, 0x1

    .line 168
    :cond_0
    if-eqz p7, :cond_1

    .line 169
    or-int/lit8 v0, v0, 0x2

    .line 170
    :cond_1
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->generateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setMethod(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 177
    invoke-virtual {p0, p8, p9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setTimeout(J)V

    .line 178
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 180
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .prologue
    .line 139
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p5}, Ljava/lang/String;-><init>([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v0, "<!@@%C%&&!>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 248
    :goto_0
    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/Utils$BytesZipUtil;->gZip([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!@@%C%&&!>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static from(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v2, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 186
    .local v2, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v4, "I"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 188
    const-string v4, "U"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 189
    const-string v4, "A"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 190
    const-string v4, "O"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 191
    const-string v4, "M"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setMethod(Ljava/lang/String;)V

    .line 192
    const-string v4, "D"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 193
    const-string v4, "F"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 194
    const-string v4, "T"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setTimeout(J)V

    .line 195
    const-string v4, "S"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 196
    const-string v4, "C"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setCode(I)V

    .line 197
    const-string v4, "E"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "extra":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v2, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "extra":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addExtraPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KEY Must Not Be NULL!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 455
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    .line 459
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 335
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    .line 336
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "header":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasHeader()Z

    move-result v4

    if-nez v4, :cond_0

    .line 517
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 518
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    .line 520
    :try_start_0
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v5, "key_header"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "header":Lorg/json/JSONObject;
    .local v2, "header":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 527
    .end local v2    # "header":Lorg/json/JSONObject;
    .restart local v1    # "header":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 529
    .local v3, "res":Z
    :try_start_2
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v5, "key_header"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 530
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v5, "key_header"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "header":Lorg/json/JSONObject;
    .restart local v2    # "header":Lorg/json/JSONObject;
    :try_start_3
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 533
    .end local v2    # "header":Lorg/json/JSONObject;
    .restart local v1    # "header":Lorg/json/JSONObject;
    :cond_1
    if-nez v1, :cond_2

    .line 534
    :try_start_4
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v5, "key_header"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 537
    :cond_2
    if-nez v1, :cond_3

    .line 538
    const/4 v4, 0x0

    .line 547
    :goto_1
    return v4

    .line 521
    .end local v3    # "res":Z
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "res":Z
    :cond_3
    :try_start_5
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move v4, v3

    .line 547
    goto :goto_1

    .line 542
    :catch_1
    move-exception v0

    .line 543
    .restart local v0    # "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 544
    const/4 v3, 0x0

    goto :goto_3

    .line 542
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "header":Lorg/json/JSONObject;
    .restart local v2    # "header":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "header":Lorg/json/JSONObject;
    .restart local v1    # "header":Lorg/json/JSONObject;
    goto :goto_4

    .line 521
    .end local v1    # "header":Lorg/json/JSONObject;
    .end local v3    # "res":Z
    .restart local v2    # "header":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "header":Lorg/json/JSONObject;
    .restart local v1    # "header":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public clearFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 339
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    .line 340
    return-void
.end method

.method public decompress(Ljava/lang/String;)[B
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 252
    move-object v1, p1

    .line 253
    .local v1, "target":Ljava/lang/String;
    const-string v3, "<!@@%C%&&!>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const-string v3, "<!@@%C%&&!>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_0
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 258
    .local v0, "decoded":[B
    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/Utils$BytesZipUtil;->unGZip([B)[B

    move-result-object v2

    .line 259
    .local v2, "unzipped":[B
    return-object v2
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 467
    :cond_0
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    return v0
.end method

.method public getHeaderValByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-object v1

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v3, "key_header"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 499
    .local v0, "obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->state:I

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->timeout:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 355
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader()Z
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v1, "key_header"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCacheEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    iget v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompressEnabled()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeExtraPairByKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 507
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasHeader()Z

    move-result v4

    if-nez v4, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v2

    .line 555
    :cond_1
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 560
    :try_start_0
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v5, "key_header"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 561
    .local v1, "header":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 562
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 564
    .end local v1    # "header":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    move v2, v3

    .line 568
    goto :goto_0
.end method

.method public removePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 264
    :try_start_0
    const-string v1, "<!@@%C%&&!>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "<!@@%C%&&!>"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 271
    :cond_0
    :goto_0
    return-object p1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public retrieveAllExtraKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public retrieveAllHeaderKeys()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-object v1

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    const-string v3, "key_header"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 487
    .local v0, "obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->action:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->code:I

    .line 129
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    const-string p1, ""

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->compress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 378
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    .line 447
    :goto_0
    return-void

    .line 433
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "jobj":Lorg/json/JSONObject;
    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    .line 439
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExtraData ERROR. Failed To Set Extra Data For : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] . NEED JSON."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExtraData ERROR. Failed To Set Extra Data For : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] . NEED JSON. Stack is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    .line 332
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->identifier:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string p1, "get"

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->method:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->owner:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->state:I

    .line 304
    return-void
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 347
    iput-wide p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->timeout:J

    .line 348
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->url:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 396
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 398
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "I"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v2, "U"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v2, "A"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v2, "O"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string v2, "M"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v2, "F"

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 404
    const-string v2, "T"

    iget-wide v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->timeout:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 405
    const-string v2, "S"

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->state:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    const-string v3, "E"

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v3, "D"

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "[EMPTY]"

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v2, "C"

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->code:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    const/16 v2, 0x4000

    invoke-virtual {p0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    const-string v2, "isSerial"

    const-string v3, "YES"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 406
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 407
    :cond_2
    const-string v2, "\u2582 #\u6709<\u6570\u636e>\u6599# \u2582"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 211
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "I"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v2, "U"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v2, "A"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v2, "O"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v2, "M"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 219
    const-string v2, ""

    iput-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->compress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    .line 223
    const-string v2, "D"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v2, "F"

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->flags:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v2, "T"

    iget-wide v4, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->timeout:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 228
    const-string v2, "S"

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->state:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v3, "E"

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v2, "C"

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->code:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const/16 v2, 0x4000

    invoke-virtual {p0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const-string v2, "isSerial"

    const-string v3, "YES"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 229
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->extra:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public trackTargetActionSet()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 613
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetPackageAndAction()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 614
    return-object v0
.end method

.method public trackTargetPackageAndAction()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 589
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->action:Ljava/lang/String;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error For Extract Target Package! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    :cond_0
    const-string v2, "target"

    invoke-virtual {p0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "who":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v1

    .line 597
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    const-string v1, "*"

    .line 601
    :cond_2
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "tmp":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-ge v2, v3, :cond_4

    .line 603
    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    .line 604
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 605
    const/4 v2, 0x1

    const-string v3, "*"

    aput-object v3, v0, v2

    .line 608
    :cond_4
    return-object v0
.end method

.method public trackWho()Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    const-string v1, "target"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/model/DataItem;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_0
    return-object v0
.end method
