.class public Lcom/huami/watch/transport/httpsupport/model/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/model/DataUtils$BytesZipUtil;,
        Lcom/huami/watch/transport/httpsupport/model/DataUtils$DataItemKey;
    }
.end annotation


# static fields
.field public static final DPATH_PARENT:Ljava/lang/String; = "/sdcard/.dpath"

.field public static final FIRST_LAUNCH_KEY:Ljava/lang/String; = "__key_first_boot"

.field private static final TAG:Ljava/lang/String; = "DataUtil"

.field private static checkedVal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->checkedVal:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method public static createDataBundleToDataItem(Lcom/huami/watch/transport/DataBundle;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 4
    .param p0, "dataBundle"    # Lcom/huami/watch/transport/DataBundle;

    .prologue
    .line 164
    new-instance v0, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 165
    .local v0, "dataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v1, "key_action"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "key_owner"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 167
    const-string v1, "key_url"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setUrl(Ljava/lang/String;)V

    .line 168
    const-string v1, "key_state"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 169
    const-string v1, "key_id"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 170
    const-string v1, "key_method"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setMethod(Ljava/lang/String;)V

    .line 171
    const-string v1, "key_data"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 172
    const-string v1, "key_flags"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 173
    const-string v1, "key_timeout"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setTimeout(J)V

    .line 174
    const-string v1, "key_extra"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 175
    const-string v1, "key_code"

    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/DataBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setCode(I)V

    .line 176
    return-object v0
.end method

.method public static createDataItemToDataBundle(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/DataBundle;
    .locals 4
    .param p0, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 148
    new-instance v0, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v0}, Lcom/huami/watch/transport/DataBundle;-><init>()V

    .line 149
    .local v0, "dataBundle":Lcom/huami/watch/transport/DataBundle;
    const-string v1, "key_action"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "key_owner"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "key_url"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "key_state"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v1, "key_id"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "key_method"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "key_data"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "key_flags"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v1, "key_timeout"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/transport/DataBundle;->putLong(Ljava/lang/String;J)V

    .line 158
    const-string v1, "key_extra"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "key_code"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putInt(Ljava/lang/String;I)V

    .line 160
    return-object v0
.end method

.method public static final drawTimeStamp(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/Long;
    .locals 8
    .param p0, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 69
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v3

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "identifier":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_2

    .line 75
    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====item =====>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , but targetWho is NULL!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_0

    .line 79
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SERIAL_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====item =====>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , but targetWho is NULL!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    const-string v4, "_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "strTime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 86
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_4

    .line 87
    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====strTime =====>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , time is NULL!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_4
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_0

    .line 91
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SERIAL_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====strTime =====>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , time is NULL!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 103
    .local v3, "time":Ljava/lang/Long;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    if-nez p0, :cond_0

    .line 104
    :cond_6
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_7

    .line 105
    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: ====parsed time is ))))) 0/NULL =====>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_7
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_0

    .line 109
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SERIAL_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning: ====parsed time is ))))) 0/NULL =====>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    .end local v3    # "time":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 100
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .restart local v3    # "time":Ljava/lang/Long;
    goto :goto_1
.end method

.method public static final drillUnzipData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;
    .locals 5
    .param p0, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v3, 0x0

    .line 117
    if-nez p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v3

    .line 121
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x0

    .line 133
    .local v1, "decoded":[B
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 139
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils$BytesZipUtil;->unGZip([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "decoded":[B
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string v3, ""

    goto :goto_0

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v1    # "decoded":[B
    :catch_1
    move-exception v2

    .line 136
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private static declared-synchronized dumpToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "pathAndName"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 192
    const-class v9, Lcom/huami/watch/transport/httpsupport/model/DataUtils;

    monitor-enter v9

    const/4 v6, 0x0

    .line 194
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, p0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    move-object v6, v7

    .line 216
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 218
    .local v0, "content":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 219
    .local v4, "end":J
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/RandomAccessFile;->write([B)V

    .line 221
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .end local v0    # "content":Ljava/lang/String;
    .end local v4    # "end":J
    :cond_0
    :goto_1
    monitor-exit v9

    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v8, 0x0

    :try_start_3
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "name":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 199
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 200
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, p0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    if-eqz v7, :cond_2

    .line 207
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v7

    .line 211
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 208
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 210
    .local v2, "e1":Ljava/io/IOException;
    :try_start_5
    const-string v8, "slog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file close failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v6, v7

    .line 211
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 201
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "name":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 202
    .restart local v2    # "e1":Ljava/io/IOException;
    :try_start_6
    const-string v8, "slog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file write failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 205
    if-eqz v6, :cond_0

    .line 207
    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 208
    :catch_3
    move-exception v2

    .line 210
    :try_start_8
    const-string v8, "slog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file close failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 192
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9

    throw v8

    .line 205
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v8

    if-eqz v6, :cond_1

    .line 207
    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 211
    :cond_1
    :goto_3
    :try_start_a
    throw v8

    .line 208
    :catch_4
    move-exception v2

    .line 210
    .restart local v2    # "e1":Ljava/io/IOException;
    const-string v10, "slog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file close failed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 222
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v0    # "content":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 223
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 192
    .end local v0    # "content":Ljava/lang/String;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method public static final generateId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "head":Ljava/lang/String;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->getTimeStamp()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "timeStamp":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "end":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static final getTimeStamp()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static isFirstBoot(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    .local v1, "spf":Landroid/content/SharedPreferences;
    const-string v2, "__key_first_boot"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    .local v0, "first":Z
    const-string v2, "DataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFirstBoot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v0, :cond_0

    .line 44
    sput-boolean v5, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->checkedVal:Z

    .line 45
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "__key_first_boot"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    :cond_0
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->checkedVal:Z

    return v2
.end method

.method public static declared-synchronized saveToFileAndManage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 180
    const-class v3, Lcom/huami/watch/transport/httpsupport/model/DataUtils;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/.dpath"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "pathAndName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 186
    :cond_0
    invoke-static {v1, p1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->dumpToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v3

    return-object v1

    .line 180
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "pathAndName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
