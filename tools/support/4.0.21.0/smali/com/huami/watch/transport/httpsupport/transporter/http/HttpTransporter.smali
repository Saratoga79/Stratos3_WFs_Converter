.class public Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;
.super Ljava/lang/Object;
.source "HttpTransporter.java"


# static fields
.field private static final MEDIA_TYPE_JSON:Lcom/squareup/okhttp/MediaType;


# instance fields
.field private mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

.field private mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->MEDIA_TYPE_JSON:Lcom/squareup/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->printHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private autoFillHeader(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p3, "builder"    # Lcom/squareup/okhttp/Request$Builder;

    .prologue
    .line 136
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->retrieveAllHeaderKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    .local v1, "headers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 141
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getHeaderValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "v":Ljava/lang/String;
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_1

    .line 145
    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto Fill Header , ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto Fill Header , ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    invoke-virtual {p3, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_2

    .line 158
    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HEADER : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]  is ILLEGAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HEADER : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  is ILLEGAL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/String;
    :cond_3
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_4

    .line 171
    const-string v4, "WH-ASSIST"

    const-string v5, "Auto Fill Header end ."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    const-string v6, "Auto Fill Header end ."

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized createResponseDataItem(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Response;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestDataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p3, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 181
    .local v3, "responseDataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 183
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setMethod(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 187
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 188
    invoke-virtual {p3}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setCode(I)V

    .line 189
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    invoke-virtual {p3}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "resStr":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [[B

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->appendChannelDownload(Ljava/lang/String;[[B)V

    .line 198
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 201
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v1

    .line 202
    .local v1, "needRecallExtra":Z
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "key_header"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v1    # "needRecallExtra":Z
    .end local v2    # "resStr":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 208
    .restart local v1    # "needRecallExtra":Z
    .restart local v2    # "resStr":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v4, "target"

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 210
    .end local v1    # "needRecallExtra":Z
    .end local v2    # "resStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "responseDataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 215
    .restart local v3    # "responseDataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 217
    if-nez p3, :cond_2

    const/4 v4, -0x1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setCode(I)V

    .line 218
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p3}, Lcom/squareup/okhttp/Response;->code()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    goto :goto_1
.end method

.method private printHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEADER In ====  for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_HTTP:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "WH-HTTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HEADER In ====  for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, "url":Ljava/lang/String;
    new-instance v3, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 66
    .local v3, "builder":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->completeURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "urlFilled":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 69
    move-object v14, v15

    .line 71
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->fillPublicHeader(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Request$Builder;)V

    .line 74
    .end local v15    # "urlFilled":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v14}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasHeader()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_2

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->autoFillHeader(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Request$Builder;)V

    .line 81
    :cond_2
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v11

    .line 85
    .local v11, "request":Lcom/squareup/okhttp/Request;
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v17

    const-string v18, "WH-ASSIST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Request Info : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Lcom/squareup/okhttp/Request;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v11}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v6

    .line 88
    .local v6, "hs":Lcom/squareup/okhttp/Headers;
    invoke-virtual {v6}, Lcom/squareup/okhttp/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v9

    .line 89
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 90
    .local v5, "hl":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 91
    .local v8, "itrhl":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    sget-boolean v17, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_HTTP:Z

    if-eqz v17, :cond_3

    .line 92
    const-string v17, "WH-HTTP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HEADER INFO ====  for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " BEGIN>>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v17

    const-string v18, "WH-ASSIST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HEADER INFO ====  for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " BEGIN>>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 97
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 98
    .local v10, "next":Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 99
    .local v16, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 100
    .local v13, "str":Ljava/lang/String;
    sget-boolean v17, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_HTTP:Z

    if-eqz v17, :cond_5

    .line 101
    const-string v17, "WH-HTTP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v17

    const-string v18, "WH-ASSIST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "next":Ljava/lang/String;
    .end local v13    # "str":Ljava/lang/String;
    .end local v16    # "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    sget-boolean v17, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_HTTP:Z

    if-eqz v17, :cond_7

    .line 107
    const-string v17, "WH-HTTP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HEADER INDO ====  for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " END<<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_7
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v17

    const-string v18, "WH-ASSIST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HEADER INDO ====  for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " END<<"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v12, 0x0

    .line 115
    .local v12, "response":Lcom/squareup/okhttp/Response;
    :try_start_0
    const-string v17, "WH-SERIAL_MODE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HTTP \u8bf7\u6c42  \u5f00\u59cb\u8bf7\u6c42x: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  who: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v11}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/squareup/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->appendChannelUpload(Ljava/lang/String;[[B)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v12

    .line 118
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/squareup/okhttp/Response;->code()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 119
    const-string v17, "WH-SERIAL_MODE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HTTP Response  :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/squareup/okhttp/Response;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->createResponseDataItem(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Response;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v17

    return-object v17

    .line 121
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/Exception;
    const-string v17, "WH-SERIAL_MODE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HTTP Response  : Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v17, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 124
    sget-boolean v17, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v17, :cond_9

    .line 125
    const-string v17, "WH-ASSIST"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " --> 00 \u4e0a\u4f20\u5e76\u6ca1\u6709\u6210\u529f\uff0c\u7f51\u7edc\u95ee\u9898\uff1f\u8fdb\u884c\u4e0b\u4e00\u6b65\u5904\u7406..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_9
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v17

    const-string v18, "WH-ASSIST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " --> 00 \u4e0a\u4f20\u5e76\u6ca1\u6709\u6210\u529f\uff0c\u7f51\u7edc\u95ee\u9898\uff1f\u8fdb\u884c\u4e0b\u4e00\u6b65\u5904\u7406..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getPublicParamsBuilder()Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    return-object v0
.end method

.method public post(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 225
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->MEDIA_TYPE_JSON:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->post(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/MediaType;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/MediaType;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p3, "mediaType"    # Lcom/squareup/okhttp/MediaType;

    .prologue
    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 239
    .local v11, "url":Ljava/lang/String;
    new-instance v8, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter$1;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;)V

    .line 267
    .local v8, "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    if-eqz v13, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v11}, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->completeURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "urlFilled":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 270
    move-object v11, v12

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1, v8}, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->fillPublicHeader(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Request$Builder;)V

    .line 279
    .end local v12    # "urlFilled":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8, v11}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 281
    const/4 v5, 0x0

    .line 283
    .local v5, "contentType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasHeader()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v13

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_2

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->autoFillHeader(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Request$Builder;)V

    .line 286
    const-string v13, "Content-Type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getHeaderValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 290
    invoke-static {v5}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object p3

    .line 293
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, "sendData":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 297
    .local v4, "byteData":[B
    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 298
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->decompress(Ljava/lang/String;)[B

    move-result-object v4

    .line 303
    :goto_0
    const/4 v3, 0x0

    .line 305
    .local v3, "body":Lcom/squareup/okhttp/RequestBody;
    :try_start_0
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v3

    .line 308
    sget-boolean v13, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 309
    const-string v13, "WH-ASSIST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Request Info : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v13

    const-string v14, "WH-ASSIST"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Request Info : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v8, v3}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    invoke-static/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [[B

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->appendChannelUpload(Ljava/lang/String;[[B)V

    .line 338
    .end local v3    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v4    # "byteData":[B
    .end local v10    # "sendData":Ljava/lang/String;
    :cond_5
    invoke-virtual {v8}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v7

    .line 341
    .local v7, "request":Lcom/squareup/okhttp/Request;
    invoke-static/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [[B

    const/16 v16, 0x0

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->appendChannelUpload(Ljava/lang/String;[[B)V

    .line 343
    const/4 v9, 0x0

    .line 345
    .local v9, "response":Lcom/squareup/okhttp/Response;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v13, v7}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v9

    .line 346
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/squareup/okhttp/Response;->code()I

    move-result v13

    const/16 v14, 0xc8

    if-eq v13, v14, :cond_6

    .line 347
    const-string v13, "WH-SERIAL_MODE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTTP Response  :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/squareup/okhttp/Response;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->createResponseDataItem(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Response;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v13

    .end local v7    # "request":Lcom/squareup/okhttp/Request;
    .end local v9    # "response":Lcom/squareup/okhttp/Response;
    :goto_2
    return-object v13

    .line 300
    .restart local v4    # "byteData":[B
    .restart local v10    # "sendData":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto/16 :goto_0

    .line 320
    .restart local v3    # "body":Lcom/squareup/okhttp/RequestBody;
    :catch_0
    move-exception v6

    .line 321
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v13, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v13, :cond_8

    .line 322
    const-string v13, "WH-ASSIST"

    const-string v14, "\u5728create request body\u7684\u65f6\u5019\u51fa\u9519\uff01"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    :cond_8
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v13

    const-string v14, "WH-ASSIST"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u5728create request body\u7684\u65f6\u5019\u51fa\u9519\uff01"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v13, 0x0

    goto :goto_2

    .line 349
    .end local v3    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v4    # "byteData":[B
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "sendData":Ljava/lang/String;
    .restart local v7    # "request":Lcom/squareup/okhttp/Request;
    .restart local v9    # "response":Lcom/squareup/okhttp/Response;
    :catch_1
    move-exception v6

    .line 350
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 351
    sget-boolean v13, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v13, :cond_9

    .line 352
    const-string v13, "WH-ASSIST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> \u4e0a\u4f20\u5e76\u6ca1\u6709\u6210\u529f\uff0c\u7f51\u7edc\u95ee\u9898\uff1f\u8fdb\u884c\u4e0b\u4e00\u6b65\u5904\u7406..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :cond_9
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v13

    const-string v14, "WH-ASSIST"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " --> \u4e0a\u4f20\u5e76\u6ca1\u6709\u6210\u529f\uff0c\u7f51\u7edc\u95ee\u9898\uff1f\u8fdb\u884c\u4e0b\u4e00\u6b65\u5904\u7406..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public request(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Ljava/util/Map;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 46
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    const-string v0, "get"

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->get(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 54
    :cond_2
    const-string v0, "post"

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->post(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPublicParamsBuilder(Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;)V
    .locals 0
    .param p1, "publicParamsBuilder"    # Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->mPublicParamsBuilder:Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    .line 365
    return-void
.end method
