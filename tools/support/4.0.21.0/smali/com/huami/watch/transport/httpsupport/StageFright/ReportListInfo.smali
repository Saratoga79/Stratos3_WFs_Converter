.class public Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
.super Ljava/lang/Object;
.source "ReportListInfo.java"


# static fields
.field public static final KEY_OF_VER:Ljava/lang/String; = "ver"

.field public static final LOCATION_APP:I = 0x0

.field public static final LOCATION_ASSIST:I = 0x2

.field public static final LOCATION_SRV:I = 0x1

.field public static final LOCATION_TOP_OF_ALL:I = 0x2

.field private static myVersion:I


# instance fields
.field public isKey:Z

.field private mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->isKey:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    sput p1, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    .line 56
    return-void
.end method

.method private flattenV0()Ljava/lang/String;
    .locals 19

    .prologue
    .line 244
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v14, "root":Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 247
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 248
    .local v11, "l":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 252
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 253
    .local v15, "singleItem":Lorg/json/JSONObject;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 256
    .local v13, "ownerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 257
    .local v12, "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 258
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    check-cast v12, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 259
    .restart local v12    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v12, :cond_1

    .line 264
    .end local v9    # "key":Ljava/lang/String;
    :cond_2
    if-eqz v12, :cond_0

    .line 266
    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 267
    .local v8, "id":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 268
    .restart local v9    # "key":Ljava/lang/String;
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    .line 270
    .local v5, "hasData":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->wrapTheData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;

    move-result-object v16

    .line 271
    .local v16, "wdata":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 272
    const-string v17, "who"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v17, "sum"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    const-string v17, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v5    # "hasData":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "id":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v11    # "l":Ljava/lang/Integer;
    .end local v12    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v13    # "ownerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "singleItem":Lorg/json/JSONObject;
    .end local v16    # "wdata":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 287
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 290
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 276
    .restart local v5    # "hasData":Z
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "id":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v11    # "l":Ljava/lang/Integer;
    .restart local v12    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v13    # "ownerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "singleItem":Lorg/json/JSONObject;
    .restart local v16    # "wdata":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "data":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 278
    .local v3, "dataSb":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v17, "sum"

    const-string v18, "sum"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static from(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->from(Ljava/lang/String;Z)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;Z)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "markKey"    # Z

    .prologue
    .line 125
    new-instance v1, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    sget v4, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    invoke-direct {v1, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;-><init>(I)V

    .line 126
    .local v1, "infos":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    iput-boolean p1, v1, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->isKey:Z

    .line 129
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 133
    .local v3, "ver":Ljava/lang/Integer;
    const-string v4, "ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const-string v4, "ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 136
    :cond_0
    if-nez v3, :cond_1

    .line 137
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 140
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    .line 143
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    .line 144
    invoke-static {v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->parseAtVer0(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;Lorg/json/JSONObject;)V

    .line 153
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "ver":Ljava/lang/Integer;
    :cond_2
    :goto_0
    return-object v1

    .line 145
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "ver":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 146
    invoke-static {v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->parseAtVer1(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "ver":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    return v0
.end method

.method public static declared-synchronized hasData(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    .prologue
    .line 87
    const-class v1, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getThings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getThings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isItemNeedSerial(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 4
    .param p0, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v0, 0x0

    .line 379
    const-class v1, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 382
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x4000

    invoke-virtual {p0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static parseAtVer0(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;Lorg/json/JSONObject;)V
    .locals 16
    .param p0, "infos"    # Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "allSum":I
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 159
    .local v8, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 160
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 161
    .local v11, "location":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 162
    .local v12, "singleItem":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 165
    const-string v15, "sum"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    const-string v15, "who"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 168
    .local v13, "who":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 171
    const-string v15, "#"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 173
    .local v14, "whos":[Ljava/lang/String;
    const-string v15, "data"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "data":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 177
    const-string v15, "#"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "cells":[Ljava/lang/String;
    move-object v2, v4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v3, v2, v6

    .line 179
    .local v3, "cell":Ljava/lang/String;
    new-instance v7, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 180
    .local v7, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {v7, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 181
    const/4 v15, 0x0

    aget-object v15, v14, v15

    invoke-virtual {v7, v15}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 182
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-virtual {v7, v15}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 183
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 184
    .local v10, "loc":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->addItem(Ljava/lang/Integer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cell":Ljava/lang/String;
    .end local v4    # "cells":[Ljava/lang/String;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v9    # "len$":I
    .end local v10    # "loc":I
    .end local v11    # "location":Ljava/lang/String;
    .end local v12    # "singleItem":Lorg/json/JSONObject;
    .end local v13    # "who":Ljava/lang/String;
    .end local v14    # "whos":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->sum:I

    .line 189
    return-void
.end method

.method private static parseAtVer1(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;Lorg/json/JSONObject;)V
    .locals 20
    .param p0, "frame"    # Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "allSum":I
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 194
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 195
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 196
    .local v15, "location":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 197
    .local v4, "arrayItems":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 203
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 204
    .local v12, "len":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_0

    .line 205
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 206
    .local v16, "singleItem":Lorg/json/JSONObject;
    const-string v19, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "data":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 204
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 211
    :cond_2
    const-string v19, "sum"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    add-int v2, v2, v19

    .line 213
    const-string v19, "who"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 214
    .local v17, "who":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 217
    const-string v19, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 218
    .local v18, "whos":[Ljava/lang/String;
    const-string v19, "#"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "cells":[Ljava/lang/String;
    move-object v3, v6

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v5, v3, v9

    .line 220
    .local v5, "cell":Ljava/lang/String;
    new-instance v10, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 221
    .local v10, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {v10, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 222
    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 223
    const/16 v19, 0x1

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 224
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 225
    .local v14, "loc":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->addItem(Ljava/lang/Integer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 219
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 230
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "arrayItems":Lorg/json/JSONArray;
    .end local v5    # "cell":Ljava/lang/String;
    .end local v6    # "cells":[Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "i$":I
    .end local v10    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v12    # "len":I
    .end local v13    # "len$":I
    .end local v14    # "loc":Ljava/lang/Integer;
    .end local v15    # "location":Ljava/lang/String;
    .end local v16    # "singleItem":Lorg/json/JSONObject;
    .end local v17    # "who":Ljava/lang/String;
    .end local v18    # "whos":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->sum:I

    .line 231
    return-void
.end method

.method public static translateV0TOV1(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;I)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .locals 12
    .param p0, "target"    # Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .param p1, "toVer"    # I

    .prologue
    .line 389
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getVersion()I

    move-result v10

    if-ne v10, p1, :cond_0

    .line 423
    .end local p0    # "target":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    :goto_0
    return-object p0

    .line 393
    .restart local p0    # "target":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->flatten()Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "str":Ljava/lang/String;
    const/4 v7, 0x0

    .line 395
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 397
    .local v6, "newObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    .end local v7    # "obj":Lorg/json/JSONObject;
    .local v8, "obj":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 399
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 400
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 401
    .local v4, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 402
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 403
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 406
    .local v1, "cell":Lorg/json/JSONObject;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 417
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "cell":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 418
    .end local v8    # "obj":Lorg/json/JSONObject;
    .local v2, "e":Lorg/json/JSONException;
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 422
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->from(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    move-result-object v3

    .local v3, "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    move-object p0, v3

    .line 423
    goto :goto_0

    .line 409
    .end local v3    # "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v8    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "array":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 410
    .restart local v0    # "array":Lorg/json/JSONArray;
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 412
    .restart local v1    # "cell":Lorg/json/JSONObject;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 416
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "cell":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    const-string v10, "ver"

    const-string v11, "1"

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    .line 419
    .end local v8    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "obj":Lorg/json/JSONObject;
    goto :goto_3

    .line 417
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private wrapTheData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 375
    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/Integer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "loc"    # Ljava/lang/Integer;
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 59
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "who":Ljava/lang/String;
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    .local v0, "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v0    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 63
    .restart local v0    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 67
    .local v2, "whom":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 68
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "whom":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 69
    .restart local v2    # "whom":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    sget v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->flattenV0()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 236
    :cond_0
    sget v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->flattenV1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flattenV1()Ljava/lang/String;
    .locals 21

    .prologue
    .line 322
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .local v14, "root":Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 325
    .local v13, "locations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 326
    .local v11, "l":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 330
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 331
    .local v2, "arrayItems":Lorg/json/JSONArray;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashSet;

    .line 334
    .local v18, "whoList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 335
    .local v17, "who":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v3, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 337
    .local v15, "singleItem":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 338
    .local v12, "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 340
    .local v10, "id":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->wrapTheData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;

    move-result-object v16

    .line 341
    .local v16, "wdata":Ljava/lang/String;
    if-nez v15, :cond_2

    .line 342
    new-instance v15, Lorg/json/JSONObject;

    .end local v15    # "singleItem":Lorg/json/JSONObject;
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .restart local v15    # "singleItem":Lorg/json/JSONObject;
    const-string v19, "who"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v19, "sum"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    const-string v19, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 347
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v2    # "arrayItems":Lorg/json/JSONArray;
    .end local v3    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "id":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v11    # "l":Ljava/lang/Integer;
    .end local v12    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v13    # "locations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v15    # "singleItem":Lorg/json/JSONObject;
    .end local v16    # "wdata":Ljava/lang/String;
    .end local v17    # "who":Ljava/lang/String;
    .end local v18    # "whoList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 362
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 365
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 349
    .restart local v2    # "arrayItems":Lorg/json/JSONArray;
    .restart local v3    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "id":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v11    # "l":Ljava/lang/Integer;
    .restart local v12    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v13    # "locations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v15    # "singleItem":Lorg/json/JSONObject;
    .restart local v16    # "wdata":Ljava/lang/String;
    .restart local v17    # "who":Ljava/lang/String;
    .restart local v18    # "whoList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "data":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v20, "#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 351
    .local v5, "dataSb":Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v19, "sum"

    const-string v20, "sum"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 359
    .end local v2    # "arrayItems":Lorg/json/JSONArray;
    .end local v3    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "dataSb":Ljava/lang/StringBuffer;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "id":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v11    # "l":Ljava/lang/Integer;
    .end local v12    # "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v15    # "singleItem":Lorg/json/JSONObject;
    .end local v16    # "wdata":Ljava/lang/String;
    .end local v17    # "who":Ljava/lang/String;
    .end local v18    # "whoList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    const-string v19, "ver"

    sget v20, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->myVersion:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getThings()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mOwner2StoringWellItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getWhomMapThings()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->mLoc2WhomMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
