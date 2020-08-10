.class public Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BltORMM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "orm.db"

.field private static final DATABASE_VERSION:I = 0x1

.field static final ID:Ljava/lang/String; = "_id"

.field static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field private static volatile INSTANCE:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM; = null

.field static final STATE:Ljava/lang/String; = "state"

.field public static final TABLE_NAME:Ljava/lang/String; = "orm"

.field static final TIME_STAMP:Ljava/lang/String; = "stamp"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "orm.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->INSTANCE:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    if-nez v0, :cond_1

    .line 30
    const-class v2, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->INSTANCE:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->INSTANCE:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    .line 33
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_1
    :try_start_2
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->INSTANCE:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 33
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

    .line 29
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private has(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;)Z
    .locals 11
    .param p1, "o"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "orm"

    const-string v3, "identifier = ?"

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    aput-object v5, v4, v10

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 163
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 168
    :goto_0
    return v10

    .line 166
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    .local v9, "res":Z
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v10, v9

    .line 168
    goto :goto_0

    .end local v9    # "res":Z
    :cond_1
    move v9, v10

    .line 166
    goto :goto_1
.end method

.method private declared-synchronized isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 52
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

    .line 54
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v1, 0x1

    .line 61
    :goto_0
    monitor-exit p0

    return v1

    .line 59
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private remove(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;)Z
    .locals 7
    .param p1, "o"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "orm"

    const-string v4, "identifier = ?"

    new-array v5, v1, [Ljava/lang/String;

    iget-object v6, p1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public mark(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 78
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    .line 82
    :cond_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;-><init>()V

    .line 83
    .local v0, "o":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->stamp:Ljava/lang/Long;

    .line 85
    sget v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->STATE_OUT:I

    iput v1, v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->state:I

    .line 86
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->saveSingle(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;)Z

    move-result v1

    goto :goto_0
.end method

.method public markDown(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 90
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    .line 94
    :cond_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;-><init>()V

    .line 95
    .local v0, "o":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    .line 96
    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->remove(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;)Z

    move-result v1

    goto :goto_0
.end method

.method public markLook(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 100
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    .line 104
    :cond_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;-><init>()V

    .line 105
    .local v0, "o":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    .line 106
    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->has(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    const-string v0, "orm"

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "CREATE TABLE orm(_id LONG PRIMARY KEY,identifier text,state INTEGER, stamp LONG)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 67
    return-void
.end method

.method public release(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    invoke-direct {v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;-><init>()V

    .line 124
    .local v1, "o":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->stamp:Ljava/lang/Long;

    .line 125
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    .line 126
    invoke-direct {p0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->remove(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;)Z

    move-result v2

    return v2
.end method

.method public save(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "os":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 139
    .local v3, "saved":Z
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 142
    :try_start_0
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

    check-cast v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    .line 143
    .local v2, "o":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "identifier"

    iget-object v8, v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v7, "state"

    iget v8, v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->state:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v7, "stamp"

    iget-object v8, v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->stamp:Ljava/lang/Long;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v7, "orm"

    const-string v8, "identifier=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->identity:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    move v3, v5

    .line 150
    :goto_1
    if-nez v3, :cond_0

    .line 151
    const-string v7, "orm"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    move v3, v5

    :goto_2
    goto :goto_0

    :cond_1
    move v3, v6

    .line 148
    goto :goto_1

    :cond_2
    move v3, v6

    .line 151
    goto :goto_2

    .line 153
    .end local v2    # "o":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    return v3

    .line 155
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public saveSingle(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;)Z
    .locals 2
    .param p1, "o"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->save(Ljava/util/List;)Z

    move-result v1

    return v1
.end method
