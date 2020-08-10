.class public final Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonSettingsAndCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;


# instance fields
.field private bitField0_:I

.field public msgType:I

.field private valueBool_:Z

.field private valueInt_:I

.field private valueString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1297
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 1298
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    .line 1299
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 2

    .prologue
    .line 1221
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    if-nez v0, :cond_1

    .line 1222
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1224
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    if-nez v0, :cond_0

    .line 1225
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    sput-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    .line 1227
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    return-object v0

    .line 1227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1413
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1407
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1302
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    .line 1303
    const/4 v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->msgType:I

    .line 1304
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueBool_:Z

    .line 1305
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueString_:Ljava/lang/String;

    .line 1306
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueInt_:I

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1308
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->cachedSize:I

    .line 1309
    return-object p0
.end method

.method public clearValueBool()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueBool_:Z

    .line 1252
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    .line 1253
    return-object p0
.end method

.method public clearValueInt()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueInt_:I

    .line 1293
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    .line 1294
    return-object p0
.end method

.method public clearValueString()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1

    .prologue
    .line 1273
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueString_:Ljava/lang/String;

    .line 1274
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    .line 1275
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1330
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1331
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->msgType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1333
    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1334
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueBool_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1337
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1338
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueString_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1341
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1342
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueInt_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1345
    :cond_2
    return v0
.end method

.method public getValueBool()Z
    .locals 1

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueBool_:Z

    return v0
.end method

.method public getValueInt()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueInt_:I

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasValueBool()Z
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueInt()Z
    .locals 1

    .prologue
    .line 1289
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueString()Z
    .locals 1

    .prologue
    .line 1270
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1353
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1354
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1358
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1359
    :sswitch_0
    return-object p0

    .line 1364
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1365
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1381
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->msgType:I

    goto :goto_0

    .line 1387
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueBool_:Z

    .line 1388
    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    goto :goto_0

    .line 1392
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueString_:Ljava/lang/String;

    .line 1393
    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    goto :goto_0

    .line 1397
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueInt_:I

    .line 1398
    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    goto :goto_0

    .line 1354
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 1365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setValueBool(Z)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueBool_:Z

    .line 1244
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    .line 1245
    return-object p0
.end method

.method public setValueInt(I)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1284
    iput p1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueInt_:I

    .line 1285
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    .line 1286
    return-object p0
.end method

.method public setValueString(Ljava/lang/String;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1262
    if-nez p1, :cond_0

    .line 1263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1265
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueString_:Ljava/lang/String;

    .line 1266
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    .line 1267
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->msgType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1316
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1317
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueBool_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1319
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1320
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueString_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1322
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1323
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;->valueInt_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1325
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1326
    return-void
.end method
