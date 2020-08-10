.class public Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataCacher.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "action"

.field static final CODE:Ljava/lang/String; = "code"

.field static final DATA:Ljava/lang/String; = "data"

.field private static final DATABASE_NAME:Ljava/lang/String; = "springchannel.db"

.field private static final DATABASE_VERSION:I

.field private static final DATABASE_VERSION_1:I = 0x1

.field private static final DATABASE_VERSION_2:I = 0x2

.field private static final DATABASE_VERSION_3:I = 0x3

.field static final EXTRA:Ljava/lang/String; = "extra"

.field static final FLAGS:Ljava/lang/String; = "flags"

.field static final ID:Ljava/lang/String; = "targetWho"

.field static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field private static volatile INSTANCE:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher; = null

.field static final METHOD:Ljava/lang/String; = "method"

.field static final OWNER:Ljava/lang/String; = "owner"

.field public static final QUERY_MODE_ALL_ITEM:I = 0x0

.field public static final QUERY_MODE_ONLY_CONCURRENT_ITEM:I = 0x1

.field public static final QUERY_MODE_ONLY_SERIAL_ITEM:I = 0x2

.field static final STATE:Ljava/lang/String; = "state"

.field private static final TABLE_DATAITEM:Ljava/lang/String; = "dataitems"

.field static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->DATABASE_VERSION:I

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v0, "springchannel.db"

    const/4 v1, 0x0

    sget v2, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->DATABASE_VERSION:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 215
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->clearProcessingFlag()V

    .line 216
    return-void
.end method

.method private accept(IILjava/lang/String;)Z
    .locals 5
    .param p1, "mode"    # I
    .param p2, "flag"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 395
    const/4 v0, 0x1

    .line 396
    .local v0, "res":Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 397
    and-int/lit16 v1, p2, 0x4000

    if-nez v1, :cond_1

    .line 398
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_0

    .line 399
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore concurrent item ==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore concurrent item ==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    .line 422
    :cond_1
    :goto_0
    return v0

    .line 408
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 409
    and-int/lit16 v1, p2, 0x4000

    if-eqz v1, :cond_1

    .line 410
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_3

    .line 411
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore serial item ==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore serial item ==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cleanUp()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->INSTANCE:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 573
    return-void
.end method

.method private clearProcessingFlag()V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->queryAll()Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "item":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 225
    .local v0, "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const/16 v3, 0x800

    invoke-virtual {v0, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->clearFlags(I)V

    goto :goto_1

    .line 227
    .end local v0    # "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_2
    invoke-direct {p0, v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Ljava/util/List;)Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v1, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->INSTANCE:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-nez v0, :cond_1

    .line 63
    const-class v2, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->INSTANCE:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->INSTANCE:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 66
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_1
    :try_start_2
    sget-object v0, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->INSTANCE:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 561
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 562
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 563
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    const/4 v1, 0x1

    .line 568
    :goto_0
    monitor-exit p0

    return v1

    .line 566
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 559
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized save(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 178
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 181
    .local v3, "saved":Z
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 185
    .local v2, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const/16 v7, 0x2000

    invoke-virtual {v2, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 188
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "identifier"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v7, "action"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v7, "owner"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v7, "url"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v7, "method"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v7, "flags"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v7, "state"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v7, "data"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v7, "extra"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v7, "code"

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v7, "dataitems"

    const-string v8, "identifier=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    move v3, v5

    .line 202
    :goto_1
    if-nez v3, :cond_0

    .line 203
    const-string v7, "dataitems"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    move v3, v5

    :goto_2
    goto/16 :goto_0

    :cond_1
    move v3, v6

    .line 200
    goto :goto_1

    :cond_2
    move v3, v6

    .line 203
    goto :goto_2

    .line 205
    .end local v2    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    monitor-exit p0

    return v3

    .line 207
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "saved":Z
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private updateFlagsInDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/huami/watch/transport/httpsupport/model/DataItem;Ljava/lang/String;I)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p3, "column"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 516
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "update %s set %s = %d where %s = \'%s\'"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dataitems"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "identifier"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "update":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addFlagsToItemSync(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V
    .locals 3
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "flags"    # I

    .prologue
    .line 527
    if-nez p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 531
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p1, p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 537
    const-string v1, "flags"

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->updateFlagsInDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/huami/watch/transport/httpsupport/model/DataItem;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public declared-synchronized delete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dataitems"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "identifier= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 53
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deleteAll()V
    .locals 4

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dataitems"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs declared-synchronized deleteByOwnerWithState(Ljava/lang/String;[I)I
    .locals 7
    .param p1, "ower"    # Ljava/lang/String;
    .param p2, "states"    # [I

    .prologue
    .line 81
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v4, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 115
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 85
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 87
    .local v1, "delCount":I
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v3, "stb":Ljava/lang/StringBuilder;
    const-string v4, "owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v4, "= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_4

    .line 98
    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    aget v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_3

    .line 102
    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    :cond_4
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v4, "wifi_trans"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v4, "dataitems"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    if-eqz v0, :cond_1

    .line 111
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 81
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "delCount":I
    .end local v2    # "i":I
    .end local v3    # "stb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 110
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "delCount":I
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 111
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized deleteByState(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dataitems"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 473
    const-string v0, "dataitems"

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const-string v0, "CREATE TABLE dataitems(targetWho INTEGER PRIMARY KEY,identifier text,action text,owner text,url text,method text,flags integer,code integer,state integer,data text,extra text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 479
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 483
    invoke-virtual {p0, p1, p2, p3}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 484
    return-void
.end method

.method public declared-synchronized query(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 231
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(Ljava/lang/String;I)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(Ljava/lang/String;I)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 13
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 236
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "select * from %s where %s=\'%s\'"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "dataitems"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "identifier"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object p1, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "query":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 240
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 243
    .local v5, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 244
    const-string v8, "flags"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 245
    .local v3, "flag":I
    const-string v8, "identifier"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "id":Ljava/lang/String;
    invoke-direct {p0, p2, v3, v4}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->accept(IILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-nez v8, :cond_1

    .line 247
    const/4 v5, 0x0

    .line 267
    .end local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v0, :cond_0

    .line 268
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "flag":I
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 249
    .restart local v3    # "flag":I
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_1
    :try_start_3
    new-instance v6, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    .end local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .local v6, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_start_4
    const-string v8, "identifier"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 251
    const-string v8, "action"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 252
    const-string v8, "owner"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 253
    const-string v8, "url"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 254
    const-string v8, "method"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setMethod(Ljava/lang/String;)V

    .line 255
    const-string v8, "flags"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 256
    const-string v8, "state"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 257
    const-string v8, "data"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 258
    const-string v8, "extra"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 259
    const-string v8, "code"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setCode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v5, v6

    .line 267
    .end local v3    # "flag":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_2
    if-eqz v0, :cond_0

    .line 268
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 235
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v7    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 263
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v7    # "query":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 264
    .local v2, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 265
    const/4 v5, 0x0

    .line 267
    .end local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v0, :cond_0

    .line 268
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 267
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    if-eqz v0, :cond_3

    .line 268
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 263
    .restart local v3    # "flag":I
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v6    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    goto :goto_1
.end method

.method public declared-synchronized query(I)Ljava/util/List;
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized query(II)Ljava/util/List;
    .locals 18
    .param p1, "state"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 340
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "select * from %s where %s=%d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "dataitems"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "state"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "query":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 343
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 344
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    const/4 v8, 0x0

    .line 345
    .local v8, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const/4 v6, -0x1

    .line 347
    .local v6, "flag":I
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    move-object v9, v8

    .end local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .local v9, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    move-object v11, v10

    .line 350
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :try_start_2
    const-string v13, "flags"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 351
    const-string v13, "identifier"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->accept(IILjava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v13

    if-nez v13, :cond_3

    move-object v8, v9

    .end local v9    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    move-object v10, v11

    .line 380
    .end local v7    # "id":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :goto_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-nez v13, :cond_0

    .line 388
    :cond_1
    if-eqz v2, :cond_2

    .line 389
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v10

    .line 356
    .end local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v9    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_3
    :try_start_5
    new-instance v8, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 357
    .end local v9    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_start_6
    invoke-virtual {v8, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 358
    const-string v13, "action"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 359
    const-string v13, "owner"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 360
    const-string v13, "url"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 361
    const-string v13, "method"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setMethod(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v8, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 363
    const-string v13, "state"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 365
    const-string v13, "data"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 367
    const-string v13, "extra"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 368
    const-string v13, "code"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setCode(I)V

    .line 369
    if-nez v11, :cond_5

    .line 370
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 373
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :goto_2
    :try_start_7
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 374
    :catch_0
    move-exception v4

    .line 375
    .end local v7    # "id":Ljava/lang/String;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v13

    const-string v14, "WH-SERIAL_MODE"

    const-string v15, "Illegal state CURSOR\uff01"

    invoke-virtual {v13, v14, v15}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 384
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 385
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 386
    const/4 v10, 0x0

    .line 388
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v2, :cond_2

    .line 389
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 339
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "flag":I
    .end local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v12    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 388
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "flag":I
    .restart local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v12    # "query":Ljava/lang/String;
    :catchall_1
    move-exception v13

    :goto_4
    if-eqz v2, :cond_4

    .line 389
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 388
    .end local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v9    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :catchall_2
    move-exception v13

    move-object v8, v9

    .end local v9    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    goto :goto_4

    .line 374
    .end local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v9    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :catch_2
    move-exception v4

    move-object v8, v9

    .end local v9    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    move-object v10, v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    goto :goto_3

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :catch_3
    move-exception v4

    move-object v10, v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    goto :goto_3

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_5
    move-object v10, v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    goto :goto_2
.end method

.method public declared-synchronized queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->queryAll(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryAll(I)Ljava/util/List;
    .locals 17
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 279
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "select * from %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "dataitems"

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, "query":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 282
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 286
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object v10, v9

    .line 290
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :try_start_2
    const-string v12, "flags"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 291
    .local v6, "flag":I
    const-string v12, "identifier"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->accept(IILjava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    if-nez v12, :cond_3

    move-object v9, v10

    .line 315
    .end local v6    # "flag":I
    .end local v7    # "id":Ljava/lang/String;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :goto_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v12

    if-nez v12, :cond_0

    .line 322
    :cond_1
    if-eqz v2, :cond_2

    .line 323
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v9

    .line 295
    .restart local v6    # "flag":I
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_3
    :try_start_5
    new-instance v8, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 296
    .local v8, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v12, "identifier"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 297
    const-string v12, "action"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 298
    const-string v12, "owner"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 299
    const-string v12, "url"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 300
    const-string v12, "method"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setMethod(Ljava/lang/String;)V

    .line 301
    const-string v12, "flags"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 302
    const-string v12, "state"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 303
    const-string v12, "data"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 304
    const-string v12, "extra"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 305
    const-string v12, "code"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setCode(I)V

    .line 306
    if-nez v10, :cond_5

    .line 307
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 308
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :goto_2
    :try_start_6
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 309
    :catch_0
    move-exception v4

    .line 310
    .end local v6    # "flag":I
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v12

    const-string v13, "WH-SERIAL_MODE"

    const-string v14, "Illegal state CURSOR 2\uff01"

    invoke-virtual {v12, v13, v14}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 318
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 319
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 320
    const/4 v9, 0x0

    .line 322
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v2, :cond_2

    .line 323
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 278
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v11    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 322
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "query":Ljava/lang/String;
    :catchall_1
    move-exception v12

    if-eqz v2, :cond_4

    .line 323
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 309
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :catch_2
    move-exception v4

    move-object v9, v10

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    goto :goto_3

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v6    # "flag":I
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v8    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_5
    move-object v9, v10

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    goto :goto_2
.end method

.method public declared-synchronized queryAllHolyBaby(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "parent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 427
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "select * from %s where %s=\'%s\'"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "dataitems"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "owner"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "_holy_board"

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, "query":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 431
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    const/4 v5, 0x0

    .line 434
    .local v5, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move-object v6, v5

    .line 437
    .end local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .local v6, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_start_2
    const-string v9, "identifier"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "id":Ljava/lang/String;
    new-instance v5, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 439
    .end local v6    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_start_3
    const-string v9, "extra"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 442
    const-string v9, "target"

    invoke-virtual {v5, v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 443
    const-string v9, "WH-SERIAL_MODE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5ffd\u7565 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "target"

    invoke-virtual {v5, v11}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " FOR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    .end local v4    # "id":Ljava/lang/String;
    :goto_0
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    if-nez v9, :cond_0

    .line 465
    :cond_1
    if-eqz v0, :cond_2

    .line 466
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v7

    .line 447
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_3
    :try_start_6
    invoke-virtual {v5, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 448
    const-string v9, "owner"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 450
    const-string v9, "data"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 451
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v2

    .line 453
    .end local v4    # "id":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v9

    const-string v10, "WH-SERIAL_MODE"

    const-string v11, "Illegal state CURSOR\uff01"

    invoke-virtual {v9, v10, v11}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 461
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :catch_1
    move-exception v3

    .line 462
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 463
    const/4 v7, 0x0

    .line 465
    if-eqz v0, :cond_2

    .line 466
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 426
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v8    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 465
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "query":Ljava/lang/String;
    :catchall_1
    move-exception v9

    if-eqz v0, :cond_4

    .line 466
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 452
    .restart local v6    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v5    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    goto :goto_2
.end method

.method public declared-synchronized save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v0, 0x1

    .line 162
    monitor-enter p0

    const/16 v1, 0x2000

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Ljava/util/List;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateByOwnerToState(Ljava/lang/String;II)I
    .locals 8
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "foundState"    # I
    .param p3, "toState"    # I

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 124
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    const-string v3, "wifi_trans"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update STATE for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v3, "dataitems"

    const-string v4, "owner = ? and state = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "countUpdate":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    monitor-exit p0

    return v0

    .line 130
    .end local v0    # "countUpdate":I
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method upgradeDB(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVer"    # I
    .param p3, "toVer"    # I

    .prologue
    .line 487
    packed-switch p2, :pswitch_data_0

    .line 508
    :goto_0
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    .line 509
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 510
    if-ge p2, p3, :cond_0

    .line 511
    invoke-virtual {p0, p1, p2, p3}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 513
    :cond_0
    return-void

    .line 490
    :pswitch_1
    :try_start_0
    const-string v1, "ALTER TABLE dataitems ADD COLUMN extra TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v0    # "e":Landroid/database/SQLException;
    :pswitch_2
    :try_start_1
    const-string v1, "ALTER TABLE dataitems ADD COLUMN code INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 498
    :catch_1
    move-exception v0

    .line 499
    .restart local v0    # "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized uploadToState(II)I
    .locals 8
    .param p1, "foundState"    # I
    .param p2, "toState"    # I

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 142
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 143
    const-string v3, "wifi_trans"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadToState:update STATE for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "dataitems"

    const-string v4, "state = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "countUpdate":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    monitor-exit p0

    return v0

    .line 148
    .end local v0    # "countUpdate":I
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method
