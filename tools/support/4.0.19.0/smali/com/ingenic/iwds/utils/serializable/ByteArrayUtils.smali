.class public final Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;
.super Ljava/lang/Object;
.source "ByteArrayUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ByteArrayUtils"

.field private static sDesiredStoragePath:Ljava/lang/String;

.field private static final sParcelableCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSafeParcelableCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sDesiredStoragePath:Ljava/lang/String;

    .line 1407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sParcelableCreators:Ljava/util/HashMap;

    .line 1468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sSafeParcelableCreators:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .param p3, "callback"    # Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Landroid/os/Parcelable;",
            "T2::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Lcom/ingenic/iwds/uniconnect/Connection;",
            "Landroid/os/Parcelable$Creator",
            "<TT1;>;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT2;>;",
            "Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/ingenic/iwds/common/exception/FileTransferException;
        }
    .end annotation

    .prologue
    .local p1, "parcelableCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT1;>;"
    .local p2, "safeParcelableCreator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT2;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1978
    const-string v3, "ByteArrayUtils"

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "connection == null"

    invoke-static {v3, v0, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1980
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeByte(Lcom/ingenic/iwds/uniconnect/Connection;)B

    move-result v0

    .line 1982
    packed-switch v0, :pswitch_data_0

    .line 2078
    const-string v2, "ByteArrayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported object type code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2079
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 1978
    goto :goto_0

    .line 1984
    :pswitch_0
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeString(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1987
    :pswitch_1
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 1990
    :pswitch_2
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeHashMap(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_1

    .line 1993
    :pswitch_3
    invoke-static {p0, p2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeSafeParcelable(Lcom/ingenic/iwds/uniconnect/Connection;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1996
    :pswitch_4
    invoke-static {p0, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeParcelable(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1999
    :pswitch_5
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeShort(Lcom/ingenic/iwds/uniconnect/Connection;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_1

    .line 2002
    :pswitch_6
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeLong(Lcom/ingenic/iwds/uniconnect/Connection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 2005
    :pswitch_7
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeFloat(Lcom/ingenic/iwds/uniconnect/Connection;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    .line 2008
    :pswitch_8
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeDouble(Lcom/ingenic/iwds/uniconnect/Connection;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 2011
    :pswitch_9
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeBoolean(Lcom/ingenic/iwds/uniconnect/Connection;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 2014
    :pswitch_a
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeCharSequence(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 2017
    :pswitch_b
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeArrayList(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 2020
    :pswitch_c
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeBooleanArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Z

    move-result-object v0

    goto :goto_1

    .line 2023
    :pswitch_d
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeByteArray(Lcom/ingenic/iwds/uniconnect/Connection;)[B

    move-result-object v0

    goto :goto_1

    .line 2026
    :pswitch_e
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeStringArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2029
    :pswitch_f
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeCharSequenceArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 2032
    :pswitch_10
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 2035
    :pswitch_11
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeIntArray(Lcom/ingenic/iwds/uniconnect/Connection;)[I

    move-result-object v0

    goto :goto_1

    .line 2038
    :pswitch_12
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeLongArray(Lcom/ingenic/iwds/uniconnect/Connection;)[J

    move-result-object v0

    goto :goto_1

    .line 2041
    :pswitch_13
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeByte(Lcom/ingenic/iwds/uniconnect/Connection;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_1

    .line 2044
    :pswitch_14
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeChar(Lcom/ingenic/iwds/uniconnect/Connection;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto/16 :goto_1

    .line 2047
    :pswitch_15
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeSerializable(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/io/Serializable;

    move-result-object v0

    goto/16 :goto_1

    .line 2050
    :pswitch_16
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeParcelableArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Landroid/os/Parcelable;

    move-result-object v0

    goto/16 :goto_1

    .line 2053
    :pswitch_17
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeSafeParcelableArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Lcom/ingenic/iwds/os/SafeParcelable;

    move-result-object v0

    goto/16 :goto_1

    .line 2056
    :pswitch_18
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeSparseArray(Lcom/ingenic/iwds/uniconnect/Connection;)Landroid/util/SparseArray;

    move-result-object v0

    goto/16 :goto_1

    .line 2059
    :pswitch_19
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeSparseBooleanArray(Lcom/ingenic/iwds/uniconnect/Connection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    goto/16 :goto_1

    .line 2062
    :pswitch_1a
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeShortArray(Lcom/ingenic/iwds/uniconnect/Connection;)[S

    move-result-object v0

    goto/16 :goto_1

    .line 2065
    :pswitch_1b
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeFloatArray(Lcom/ingenic/iwds/uniconnect/Connection;)[F

    move-result-object v0

    goto/16 :goto_1

    .line 2068
    :pswitch_1c
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeDoubleArray(Lcom/ingenic/iwds/uniconnect/Connection;)[D

    move-result-object v0

    goto/16 :goto_1

    .line 2071
    :pswitch_1d
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeCharArray(Lcom/ingenic/iwds/uniconnect/Connection;)[C

    move-result-object v0

    goto/16 :goto_1

    .line 2074
    :pswitch_1e
    const-string v0, "ByteArrayUtils"

    if-nez p3, :cond_1

    :goto_2
    const-string v2, "TransferAdapterCallback is null"

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2075
    invoke-static {p0, p3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeFile(Lcom/ingenic/iwds/uniconnect/Connection;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/io/File;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    move v1, v2

    .line 2074
    goto :goto_2

    .line 1982
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_17
        :pswitch_16
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_19
        :pswitch_c
        :pswitch_f
        :pswitch_14
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method private static decodeArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Ljava/lang/Object;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1627
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1628
    new-array v2, v1, [Ljava/lang/Object;

    .line 1630
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1631
    invoke-static {p0, v4, v4, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decode(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;

    move-result-object v3

    .line 1632
    aput-object v3, v2, v0

    .line 1630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1635
    :cond_0
    return-object v2
.end method

.method private static decodeArrayList(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1613
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1614
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1616
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1617
    invoke-static {p0, v4, v4, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decode(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;

    move-result-object v3

    .line 1618
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
    :cond_0
    return-object v2
.end method

.method private static decodeBoolean(Lcom/ingenic/iwds/uniconnect/Connection;)Z
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1270
    const/4 v0, 0x1

    new-array v2, v0, [B

    .line 1271
    const/4 v1, 0x0

    .line 1272
    array-length v0, v2

    .line 1273
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1276
    :goto_0
    if-lez v0, :cond_0

    .line 1277
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1278
    add-int/2addr v1, v4

    .line 1279
    sub-int/2addr v0, v4

    .line 1280
    goto :goto_0

    .line 1282
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readBoolean([B)Z

    move-result v0

    return v0
.end method

.method private static decodeBooleanArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Z
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1288
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1289
    new-array v2, v1, [Z

    .line 1291
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1292
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeBoolean(Lcom/ingenic/iwds/uniconnect/Connection;)Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1295
    :cond_0
    return-object v2
.end method

.method private static decodeByte(Lcom/ingenic/iwds/uniconnect/Connection;)B
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    const/4 v0, 0x1

    new-array v2, v0, [B

    .line 1138
    const/4 v1, 0x0

    .line 1139
    array-length v0, v2

    .line 1140
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1143
    :goto_0
    if-lez v0, :cond_0

    .line 1144
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1145
    add-int/2addr v1, v4

    .line 1146
    sub-int/2addr v0, v4

    .line 1147
    goto :goto_0

    .line 1149
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readByte([B)B

    move-result v0

    return v0
.end method

.method private static decodeByteArray(Lcom/ingenic/iwds/uniconnect/Connection;)[B
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1302
    new-array v2, v1, [B

    .line 1303
    const/4 v0, 0x0

    .line 1304
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1307
    :goto_0
    if-lez v1, :cond_0

    .line 1308
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1309
    add-int/2addr v0, v4

    .line 1310
    sub-int/2addr v1, v4

    .line 1311
    goto :goto_0

    .line 1313
    :cond_0
    return-object v2
.end method

.method private static decodeChar(Lcom/ingenic/iwds/uniconnect/Connection;)C
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1253
    const/4 v0, 0x2

    new-array v2, v0, [B

    .line 1254
    const/4 v1, 0x0

    .line 1255
    array-length v0, v2

    .line 1256
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1259
    :goto_0
    if-lez v0, :cond_0

    .line 1260
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1261
    add-int/2addr v1, v4

    .line 1262
    sub-int/2addr v0, v4

    .line 1263
    goto :goto_0

    .line 1265
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readChar([B)C

    move-result v0

    return v0
.end method

.method private static decodeCharArray(Lcom/ingenic/iwds/uniconnect/Connection;)[C
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1398
    new-array v2, v1, [C

    .line 1400
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1401
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeChar(Lcom/ingenic/iwds/uniconnect/Connection;)C

    move-result v3

    aput-char v3, v2, v0

    .line 1400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1404
    :cond_0
    return-object v2
.end method

.method private static decodeCharSequence(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1641
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1642
    new-array v2, v1, [B

    .line 1643
    const/4 v0, 0x0

    .line 1644
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1647
    :goto_0
    if-lez v1, :cond_0

    .line 1648
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1649
    add-int/2addr v0, v4

    .line 1650
    sub-int/2addr v1, v4

    .line 1651
    goto :goto_0

    .line 1653
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCharSequenceArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Ljava/lang/CharSequence;
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1659
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1660
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 1662
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1663
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeCharSequence(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1666
    :cond_0
    return-object v2
.end method

.method private static decodeDouble(Lcom/ingenic/iwds/uniconnect/Connection;)D
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1237
    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 1238
    const/4 v1, 0x0

    .line 1239
    array-length v0, v2

    .line 1240
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1243
    :goto_0
    if-lez v0, :cond_0

    .line 1244
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1245
    add-int/2addr v1, v4

    .line 1246
    sub-int/2addr v0, v4

    .line 1247
    goto :goto_0

    .line 1249
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readDouble([B)D

    move-result-wide v0

    return-wide v0
.end method

.method private static decodeDoubleArray(Lcom/ingenic/iwds/uniconnect/Connection;)[D
    .locals 6
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1385
    new-array v2, v1, [D

    .line 1387
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1388
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeDouble(Lcom/ingenic/iwds/uniconnect/Connection;)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    :cond_0
    return-object v2
.end method

.method private static decodeFile(Lcom/ingenic/iwds/uniconnect/Connection;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/io/File;
    .locals 22
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .param p1, "callback"    # Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/ingenic/iwds/common/exception/FileTransferException;
        }
    .end annotation

    .prologue
    .line 1758
    .line 1759
    const/4 v2, 0x0

    .line 1762
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1763
    sget-object v2, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sDesiredStoragePath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/iwds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sDesiredStoragePath:Ljava/lang/String;

    .line 1767
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v2, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sDesiredStoragePath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1770
    const-string v2, "ByteArrayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to receive file: can\'t create base directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1771
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1770
    invoke-static {v2, v4}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1775
    :cond_1
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1783
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeString(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/String;

    move-result-object v10

    .line 1784
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1785
    :cond_2
    const-string v3, "ByteArrayUtils"

    const-string v4, "Unable to receive file: name is null or empty"

    invoke-static {v3, v4}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1789
    :cond_3
    new-instance v12, Ljava/io/File;

    sget-object v3, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sDesiredStoragePath:Ljava/lang/String;

    invoke-direct {v12, v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-static/range {p0 .. p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeLong(Lcom/ingenic/iwds/uniconnect/Connection;)J

    move-result-wide v14

    .line 1793
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-gtz v3, :cond_4

    .line 1794
    const-string v3, "ByteArrayUtils"

    const-string v4, "Unable to receive file: invalid file length"

    invoke-static {v3, v4}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1798
    :cond_4
    const/high16 v13, 0x10000

    .line 1802
    int-to-long v4, v13

    rem-long v4, v14, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_a

    .line 1803
    int-to-long v4, v13

    div-long v4, v14, v4

    long-to-int v3, v4

    .line 1808
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v8

    .line 1811
    if-gt v8, v3, :cond_5

    if-gez v8, :cond_6

    .line 1812
    :cond_5
    const-string v4, "ByteArrayUtils"

    const-string v5, "Unable to receive file: chunk index out of bound"

    invoke-static {v4, v5}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1816
    :cond_6
    mul-int v4, v8, v13

    int-to-long v6, v4

    .line 1819
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-lez v4, :cond_7

    .line 1820
    const-string v4, "ByteArrayUtils"

    const-string v5, "Unable to receive file: file length less than already read length"

    invoke-static {v4, v5}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1824
    :cond_7
    sub-long v4, v14, v6

    .line 1827
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x12

    if-lt v9, v11, :cond_b

    .line 1828
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v16

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v18

    const-wide/16 v20, 0x4

    sub-long v18, v18, v20

    mul-long v16, v16, v18

    cmp-long v2, v16, v4

    if-gez v2, :cond_8

    .line 1829
    const-string v2, "ByteArrayUtils"

    const-string v9, "Unabled to receive file: not enough free space"

    invoke-static {v2, v9}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1840
    :cond_8
    :goto_2
    const/4 v9, 0x0

    .line 1843
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v11, "rwd"

    invoke-direct {v2, v12, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v2

    .line 1852
    :goto_3
    :try_start_1
    invoke-virtual {v11, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1867
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 1869
    new-array v0, v13, [B

    move-object/from16 v17, v0

    move v10, v8

    move-wide v8, v6

    move-wide v6, v4

    .line 1871
    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-lez v2, :cond_e

    .line 1872
    int-to-long v4, v13

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1874
    const/4 v2, 0x0

    move v5, v2

    move v2, v4

    .line 1883
    :goto_6
    if-lez v2, :cond_c

    .line 1884
    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v18

    .line 1886
    sub-int v2, v2, v18

    .line 1887
    add-int v5, v5, v18

    .line 1888
    goto :goto_6

    .line 1778
    :cond_9
    const-string v3, "ByteArrayUtils"

    const-string v4, "Unable to receive file: no external storage"

    invoke-static {v3, v4}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    goto/16 :goto_0

    .line 1805
    :cond_a
    int-to-long v4, v13

    div-long v4, v14, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-int v3, v4

    goto/16 :goto_1

    .line 1834
    :cond_b
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v16, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x4

    sub-long v18, v18, v20

    mul-long v16, v16, v18

    cmp-long v2, v16, v4

    if-gez v2, :cond_8

    .line 1835
    const-string v2, "ByteArrayUtils"

    const-string v9, "Unabled to receive file: not enough free space"

    invoke-static {v2, v9}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    goto :goto_2

    .line 1845
    :catch_0
    move-exception v2

    .line 1846
    const-string v2, "ByteArrayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to receive file: error create file "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    move-object v11, v9

    goto/16 :goto_3

    .line 1854
    :catch_1
    move-exception v2

    .line 1856
    :try_start_3
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1862
    :goto_7
    const-string v2, "ByteArrayUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to receive file: error seek file to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    goto/16 :goto_4

    .line 1890
    :catch_2
    move-exception v2

    .line 1892
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1898
    :goto_8
    const-string v3, "ByteArrayUtils"

    const-string v4, "Unable to receive file: connection io exception"

    invoke-static {v3, v4}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;->onRecvFileInterrupted(I)V

    .line 1900
    throw v2

    .line 1904
    :cond_c
    const/4 v2, 0x0

    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1919
    :goto_9
    add-int/lit8 v2, v10, 0x1

    if-le v10, v3, :cond_d

    .line 1920
    const-string v5, "ByteArrayUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unable to receive file: index out of bound:, current="

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v18, ", total="

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1925
    :cond_d
    int-to-long v0, v4

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 1926
    int-to-long v4, v4

    sub-long v4, v6, v4

    .line 1928
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v14, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;->onRecvFileProgress(JJ)V

    move-wide v6, v4

    move v10, v2

    .line 1929
    goto/16 :goto_5

    .line 1906
    :catch_3
    move-exception v2

    .line 1908
    :try_start_6
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1914
    :goto_a
    const-string v2, "ByteArrayUtils"

    const-string v5, "Unable to receive file: file write io exception"

    invoke-static {v2, v5}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;->onRecvFileInterrupted(I)V

    .line 1916
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    goto :goto_9

    .line 1932
    :cond_e
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1938
    :goto_b
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-eqz v2, :cond_f

    .line 1939
    const-string v2, "ByteArrayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to receive file: error received file length: recvLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1940
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sendLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1939
    invoke-static {v2, v3}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 1944
    :cond_f
    return-object v12

    .line 1858
    :catch_4
    move-exception v2

    goto/16 :goto_7

    .line 1894
    :catch_5
    move-exception v3

    goto/16 :goto_8

    .line 1910
    :catch_6
    move-exception v2

    goto :goto_a

    .line 1934
    :catch_7
    move-exception v2

    goto :goto_b
.end method

.method private static decodeFloat(Lcom/ingenic/iwds/uniconnect/Connection;)F
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1220
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 1221
    const/4 v1, 0x0

    .line 1222
    array-length v0, v2

    .line 1223
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1226
    :goto_0
    if-lez v0, :cond_0

    .line 1227
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1228
    add-int/2addr v1, v4

    .line 1229
    sub-int/2addr v0, v4

    .line 1230
    goto :goto_0

    .line 1232
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readFloat([B)F

    move-result v0

    return v0
.end method

.method private static decodeFloatArray(Lcom/ingenic/iwds/uniconnect/Connection;)[F
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1371
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1372
    new-array v2, v1, [F

    .line 1374
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1375
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeFloat(Lcom/ingenic/iwds/uniconnect/Connection;)F

    move-result v3

    aput v3, v2, v0

    .line 1374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1378
    :cond_0
    return-object v2
.end method

.method private static decodeHashMap(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/util/HashMap;
    .locals 6
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1598
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1599
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1601
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1602
    invoke-static {p0, v5, v5, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decode(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;

    move-result-object v3

    .line 1603
    invoke-static {p0, v5, v5, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decode(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;

    move-result-object v4

    .line 1604
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    :cond_0
    return-object v2
.end method

.method private static decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 1173
    const/4 v1, 0x0

    .line 1174
    array-length v0, v2

    .line 1175
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1178
    :goto_0
    if-lez v0, :cond_0

    .line 1179
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1180
    add-int/2addr v1, v4

    .line 1181
    sub-int/2addr v0, v4

    .line 1182
    goto :goto_0

    .line 1184
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readInt([B)I

    move-result v0

    return v0
.end method

.method private static decodeIntArray(Lcom/ingenic/iwds/uniconnect/Connection;)[I
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1332
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1333
    new-array v2, v1, [I

    .line 1335
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1336
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v3

    aput v3, v2, v0

    .line 1335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1339
    :cond_0
    return-object v2
.end method

.method private static decodeLong(Lcom/ingenic/iwds/uniconnect/Connection;)J
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 1205
    const/4 v1, 0x0

    .line 1206
    array-length v0, v2

    .line 1207
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1210
    :goto_0
    if-lez v0, :cond_0

    .line 1211
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1212
    add-int/2addr v1, v4

    .line 1213
    sub-int/2addr v0, v4

    .line 1214
    goto :goto_0

    .line 1216
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static decodeLongArray(Lcom/ingenic/iwds/uniconnect/Connection;)[J
    .locals 6
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1345
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1346
    new-array v2, v1, [J

    .line 1348
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1349
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeLong(Lcom/ingenic/iwds/uniconnect/Connection;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1352
    :cond_0
    return-object v2
.end method

.method private static decodeParcelable(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Lcom/ingenic/iwds/uniconnect/Connection;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    .line 1534
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez p1, :cond_0

    .line 1536
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeString(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readParcelableCreator(Ljava/lang/String;)Landroid/os/Parcelable$Creator;

    move-result-object p1

    .line 1546
    .end local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_0
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1547
    new-array v2, v1, [B

    .line 1549
    const/4 v0, 0x0

    .line 1550
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1553
    :goto_0
    if-lez v1, :cond_1

    .line 1554
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1555
    add-int/2addr v0, v4

    .line 1556
    sub-int/2addr v1, v4

    .line 1557
    goto :goto_0

    .line 1559
    :cond_1
    invoke-static {v2, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readParcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static decodeParcelableArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Landroid/os/Parcelable;
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1732
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v2

    .line 1733
    new-array v3, v2, [Landroid/os/Parcelable;

    .line 1735
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1736
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeParcelable(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    aput-object v0, v3, v1

    .line 1735
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1739
    :cond_0
    return-object v3
.end method

.method private static decodeSafeParcelable(Lcom/ingenic/iwds/uniconnect/Connection;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)Ljava/lang/Object;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Lcom/ingenic/iwds/uniconnect/Connection;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    .line 1567
    .local p1, "creator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    if-nez p1, :cond_0

    .line 1569
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeString(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 1572
    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readSafeParcelableCreator(Ljava/lang/String;)Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    move-result-object p1

    .line 1579
    .end local p1    # "creator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    :cond_0
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1580
    new-array v2, v1, [B

    .line 1582
    const/4 v0, 0x0

    .line 1583
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1586
    :goto_0
    if-lez v1, :cond_1

    .line 1587
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1588
    add-int/2addr v0, v4

    .line 1589
    sub-int/2addr v1, v4

    .line 1590
    goto :goto_0

    .line 1592
    :cond_1
    invoke-static {v2, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readSafeParcelable([BLcom/ingenic/iwds/os/SafeParcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static decodeSafeParcelableArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Lcom/ingenic/iwds/os/SafeParcelable;
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v2

    .line 1746
    new-array v3, v2, [Lcom/ingenic/iwds/os/SafeParcelable;

    .line 1748
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1749
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeSafeParcelable(Lcom/ingenic/iwds/uniconnect/Connection;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable;

    aput-object v0, v3, v1

    .line 1748
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1752
    :cond_0
    return-object v3
.end method

.method private static decodeSerializable(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/io/Serializable;
    .locals 7
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1672
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeString(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/String;

    move-result-object v3

    .line 1674
    const-string v4, "ByteArrayUtils"

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v5, "Bad serializable name null"

    invoke-static {v4, v0, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1677
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeByteArray(Lcom/ingenic/iwds/uniconnect/Connection;)[B

    move-result-object v0

    .line 1678
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1681
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1682
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1694
    :goto_1
    return-object v0

    .line 1674
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    const-string v4, "ByteArrayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1687
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    .line 1688
    goto :goto_1

    .line 1690
    :catch_1
    move-exception v0

    .line 1691
    const-string v0, "ByteArrayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encounteredClassNotFoundException reading a Serializable object(name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    move-object v0, v2

    .line 1694
    goto :goto_1
.end method

.method private static decodeShort(Lcom/ingenic/iwds/uniconnect/Connection;)S
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    const/4 v0, 0x2

    new-array v2, v0, [B

    .line 1189
    const/4 v1, 0x0

    .line 1190
    array-length v0, v2

    .line 1191
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1194
    :goto_0
    if-lez v0, :cond_0

    .line 1195
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1196
    add-int/2addr v1, v4

    .line 1197
    sub-int/2addr v0, v4

    .line 1198
    goto :goto_0

    .line 1200
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readShort([B)S

    move-result v0

    return v0
.end method

.method private static decodeShortArray(Lcom/ingenic/iwds/uniconnect/Connection;)[S
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1358
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1359
    new-array v2, v1, [S

    .line 1361
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1362
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeShort(Lcom/ingenic/iwds/uniconnect/Connection;)S

    move-result v3

    aput-short v3, v2, v0

    .line 1361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1365
    :cond_0
    return-object v2
.end method

.method private static decodeSparseArray(Lcom/ingenic/iwds/uniconnect/Connection;)Landroid/util/SparseArray;
    .locals 6
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1701
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1702
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1704
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1705
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v3

    .line 1706
    invoke-static {p0, v5, v5, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decode(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;

    move-result-object v4

    .line 1707
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1710
    :cond_0
    return-object v2
.end method

.method private static decodeSparseBooleanArray(Lcom/ingenic/iwds/uniconnect/Connection;)Landroid/util/SparseBooleanArray;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1718
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1720
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1721
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v3

    .line 1722
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeBoolean(Lcom/ingenic/iwds/uniconnect/Connection;)Z

    move-result v4

    .line 1723
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1726
    :cond_0
    return-object v2
.end method

.method private static decodeString(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/String;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1157
    const/4 v0, 0x0

    .line 1158
    new-array v2, v1, [B

    .line 1159
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1162
    :goto_0
    if-lez v1, :cond_0

    .line 1163
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1164
    add-int/2addr v0, v4

    .line 1165
    sub-int/2addr v1, v4

    .line 1166
    goto :goto_0

    .line 1168
    :cond_0
    invoke-static {v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeStringArray(Lcom/ingenic/iwds/uniconnect/Connection;)[Ljava/lang/String;
    .locals 4
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeInt(Lcom/ingenic/iwds/uniconnect/Connection;)I

    move-result v1

    .line 1320
    new-array v2, v1, [Ljava/lang/String;

    .line 1322
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1323
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decodeString(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    return-object v2
.end method

.method public static encode(Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B
    .locals 5
    .param p0, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Landroid/os/Parcelable;",
            "T2::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/os/Parcelable$Creator",
            "<TT1;>;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT2;>;)[B"
        }
    .end annotation

    .prologue
    .local p1, "parcelableCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT1;>;"
    .local p2, "safeParcelableCreator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT2;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 920
    const-string v3, "ByteArrayUtils"

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "encode object is null"

    invoke-static {v3, v0, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 922
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 923
    check-cast p0, Ljava/lang/String;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeString(Ljava/lang/String;)[B

    move-result-object v0

    .line 1025
    :goto_1
    return-object v0

    .line 920
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 925
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 926
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeInt(I)[B

    move-result-object v0

    goto :goto_1

    .line 928
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 929
    check-cast p0, Ljava/util/Map;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeMap(Ljava/util/Map;)[B

    move-result-object v0

    goto :goto_1

    .line 931
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/ingenic/iwds/os/SafeParcelable;

    if-eqz v0, :cond_4

    .line 932
    check-cast p0, Lcom/ingenic/iwds/os/SafeParcelable;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeSafeParcelable(Lcom/ingenic/iwds/os/SafeParcelable;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v0

    goto :goto_1

    .line 934
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 935
    check-cast p0, Landroid/os/Parcelable;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeParcelable(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)[B

    move-result-object v0

    goto :goto_1

    .line 937
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 938
    check-cast p0, Ljava/lang/Short;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeShort(S)[B

    move-result-object v0

    goto :goto_1

    .line 940
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 941
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeLong(J)[B

    move-result-object v0

    goto :goto_1

    .line 943
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 944
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeFloat(F)[B

    move-result-object v0

    goto :goto_1

    .line 946
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 947
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeDouble(D)[B

    move-result-object v0

    goto :goto_1

    .line 949
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 950
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeBoolean(Z)[B

    move-result-object v0

    goto :goto_1

    .line 952
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 954
    check-cast p0, Ljava/lang/CharSequence;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeCharSequence(Ljava/lang/CharSequence;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 956
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_b
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_c

    .line 957
    check-cast p0, Ljava/util/List;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeList(Ljava/util/List;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 959
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    .line 960
    check-cast p0, Landroid/util/SparseArray;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeSparseArray(Landroid/util/SparseArray;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 962
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v0, p0, [Z

    if-eqz v0, :cond_e

    .line 963
    check-cast p0, [Z

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [Z

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeBooleanArray([Z)[B

    move-result-object v0

    goto/16 :goto_1

    .line 965
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    .line 966
    check-cast p0, [B

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeByteArray([B)[B

    move-result-object v0

    goto/16 :goto_1

    .line 968
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 969
    check-cast p0, [Ljava/lang/String;

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeStringArray([Ljava/lang/String;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 971
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v0, p0, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 973
    check-cast p0, [Ljava/lang/CharSequence;

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeCharSequenceArray([Ljava/lang/CharSequence;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 976
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v0, p0, [Lcom/ingenic/iwds/os/SafeParcel;

    if-eqz v0, :cond_12

    .line 977
    check-cast p0, [Lcom/ingenic/iwds/os/SafeParcelable;

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [Lcom/ingenic/iwds/os/SafeParcelable;

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeSafeParcelableArray([Lcom/ingenic/iwds/os/SafeParcelable;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 979
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_13

    .line 980
    check-cast p0, [Landroid/os/Parcelable;

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [Landroid/os/Parcelable;

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeParcelableArray([Landroid/os/Parcelable;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 982
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_13
    instance-of v0, p0, [I

    if-eqz v0, :cond_14

    .line 983
    check-cast p0, [I

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeIntArray([I)[B

    move-result-object v0

    goto/16 :goto_1

    .line 985
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_14
    instance-of v0, p0, [J

    if-eqz v0, :cond_15

    .line 986
    check-cast p0, [J

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeLongArray([J)[B

    move-result-object v0

    goto/16 :goto_1

    .line 988
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_15
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_16

    .line 989
    check-cast p0, Ljava/lang/Byte;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeByte(B)[B

    move-result-object v0

    goto/16 :goto_1

    .line 991
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_17

    .line 992
    check-cast p0, Ljava/lang/Character;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeChar(C)[B

    move-result-object v0

    goto/16 :goto_1

    .line 994
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_17
    instance-of v0, p0, [C

    if-eqz v0, :cond_18

    .line 995
    check-cast p0, [C

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [C

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeCharArray([C)[B

    move-result-object v0

    goto/16 :goto_1

    .line 997
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_18
    instance-of v0, p0, [S

    if-eqz v0, :cond_19

    .line 998
    check-cast p0, [S

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [S

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeShortArray([S)[B

    move-result-object v0

    goto/16 :goto_1

    .line 1000
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_19
    instance-of v0, p0, [F

    if-eqz v0, :cond_1a

    .line 1001
    check-cast p0, [F

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [F

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeFloatArray([F)[B

    move-result-object v0

    goto/16 :goto_1

    .line 1003
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_1a
    instance-of v0, p0, [D

    if-eqz v0, :cond_1b

    .line 1004
    check-cast p0, [D

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [D

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeDoubleArray([D)[B

    move-result-object v0

    goto/16 :goto_1

    .line 1006
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_1b
    instance-of v0, p0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1c

    .line 1007
    check-cast p0, Landroid/util/SparseBooleanArray;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeSparseBooleanArray(Landroid/util/SparseBooleanArray;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 1009
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_1c
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_1d

    .line 1010
    const-string v0, "ByteArrayUtils"

    const-string v3, "Unsupport File object serialization"

    invoke-static {v0, v1, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    move-object v0, v2

    .line 1011
    goto/16 :goto_1

    .line 1014
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_1e

    .line 1016
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "v":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeArray([Ljava/lang/Object;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 1018
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_1e
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1f

    .line 1020
    check-cast p0, Ljava/io/Serializable;

    .end local p0    # "v":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encodeSerializable(Ljava/io/Serializable;)[B

    move-result-object v0

    goto/16 :goto_1

    .line 1023
    .restart local p0    # "v":Ljava/lang/Object;
    :cond_1f
    const-string v0, "ByteArrayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1024
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1023
    invoke-static {v0, v1, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    move-object v0, v2

    .line 1025
    goto/16 :goto_1
.end method

.method private static encodeArray([Ljava/lang/Object;)[B
    .locals 8
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 701
    .line 702
    array-length v2, p0

    .line 703
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 707
    const/16 v3, 0x11

    invoke-static {v0, v1, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 709
    invoke-static {v0, v3, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v2

    .line 713
    array-length v4, p0

    move v3, v2

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p0, v0

    .line 715
    invoke-static {v5, v7, v7}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encode(Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v5

    .line 716
    array-length v6, v5

    invoke-static {v3, v6, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object v2

    .line 717
    array-length v6, v5

    invoke-static {v5, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    array-length v5, v5

    add-int/2addr v3, v5

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_0
    return-object v2
.end method

.method private static encodeBoolean(Z)[B
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 363
    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 364
    invoke-static {v1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeBoolean([BIZ)I

    .line 365
    return-object v1
.end method

.method private static encodeBooleanArray([Z)[B
    .locals 5
    .param p0, "values"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 497
    .line 498
    array-length v1, p0

    .line 499
    mul-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 503
    const/16 v3, 0x17

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 505
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 508
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-boolean v4, p0, v0

    .line 509
    invoke-static {v2, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeBoolean([BIZ)I

    move-result v1

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-object v2
.end method

.method private static encodeByte(B)[B
    .locals 3
    .param p0, "value"    # B

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 353
    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 354
    invoke-static {v1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    .line 355
    return-object v1
.end method

.method private static encodeByteArray([B)[B
    .locals 5
    .param p0, "values"    # [B

    .prologue
    const/4 v0, 0x0

    .line 478
    .line 479
    array-length v1, p0

    .line 480
    mul-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 484
    const/16 v3, 0xd

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 486
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 489
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    .line 490
    invoke-static {v2, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v1

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    return-object v2
.end method

.method private static encodeChar(C)[B
    .locals 3
    .param p0, "value"    # C

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    const/4 v1, 0x3

    new-array v1, v1, [B

    .line 423
    const/16 v2, 0x19

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 424
    invoke-static {v1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeChar([BIC)I

    .line 425
    return-object v1
.end method

.method private static encodeCharArray([C)[B
    .locals 5
    .param p0, "values"    # [C

    .prologue
    const/4 v0, 0x0

    .line 606
    .line 607
    array-length v1, p0

    .line 608
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 612
    const/16 v3, 0x1d

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 614
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 617
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, p0, v0

    .line 618
    invoke-static {v2, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeChar([BIC)I

    move-result v1

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_0
    return-object v2
.end method

.method private static encodeCharSequence(Ljava/lang/CharSequence;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 725
    const/4 v0, 0x0

    .line 726
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 729
    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 736
    invoke-static {v1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeCharSequence([BILjava/lang/CharSequence;)[B

    move-result-object v0

    .line 737
    array-length v1, v0

    .line 739
    return-object v0
.end method

.method private static encodeCharSequenceArray([Ljava/lang/CharSequence;)[B
    .locals 5
    .param p0, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 743
    .line 744
    array-length v2, p0

    .line 745
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 749
    const/16 v3, 0x18

    invoke-static {v1, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 751
    invoke-static {v1, v3, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v2

    .line 754
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 759
    invoke-static {v1, v2, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeCharSequence([BILjava/lang/CharSequence;)[B

    move-result-object v1

    .line 760
    array-length v2, v1

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    :cond_0
    return-object v1
.end method

.method private static encodeDouble(D)[B
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    const/16 v1, 0x9

    new-array v1, v1, [B

    .line 413
    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 414
    invoke-static {v1, v0, p0, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeDouble([BID)I

    .line 415
    return-object v1
.end method

.method private static encodeDoubleArray([D)[B
    .locals 6
    .param p0, "values"    # [D

    .prologue
    const/4 v0, 0x0

    .line 588
    .line 589
    array-length v1, p0

    .line 590
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 594
    const/16 v3, 0x1c

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 596
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 599
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, p0, v0

    .line 600
    invoke-static {v2, v1, v4, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeDouble([BID)I

    move-result v1

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    return-object v2
.end method

.method private static encodeFloat(F)[B
    .locals 3
    .param p0, "value"    # F

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 403
    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 404
    invoke-static {v1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeFloat([BIF)I

    .line 405
    return-object v1
.end method

.method private static encodeFloatArray([F)[B
    .locals 5
    .param p0, "values"    # [F

    .prologue
    const/4 v0, 0x0

    .line 570
    .line 571
    array-length v1, p0

    .line 572
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 576
    const/16 v3, 0x1b

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 578
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 581
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p0, v0

    .line 582
    invoke-static {v2, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeFloat([BIF)I

    move-result v1

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    return-object v2
.end method

.method private static encodeInt(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 383
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 384
    invoke-static {v1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    .line 385
    return-object v1
.end method

.method private static encodeIntArray([I)[B
    .locals 5
    .param p0, "values"    # [I

    .prologue
    const/4 v0, 0x0

    .line 534
    .line 535
    array-length v1, p0

    .line 536
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 540
    const/16 v3, 0x12

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 542
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 545
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p0, v0

    .line 546
    invoke-static {v2, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_0
    return-object v2
.end method

.method private static encodeList(Ljava/util/List;)[B
    .locals 8
    .param p0, "value"    # Ljava/util/List;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 678
    .line 679
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 680
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 684
    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v2

    .line 686
    invoke-static {v0, v2, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v2

    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 689
    :goto_0
    if-ge v0, v4, :cond_0

    .line 691
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7, v7}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encode(Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v5

    .line 692
    array-length v6, v5

    invoke-static {v3, v6, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object v2

    .line 693
    array-length v6, v5

    invoke-static {v5, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    array-length v5, v5

    add-int/2addr v3, v5

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_0
    return-object v2
.end method

.method private static encodeLong(J)[B
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    const/16 v1, 0x9

    new-array v1, v1, [B

    .line 393
    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 394
    invoke-static {v1, v0, p0, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeLong([BIJ)I

    .line 395
    return-object v1
.end method

.method private static encodeLongArray([J)[B
    .locals 6
    .param p0, "values"    # [J

    .prologue
    const/4 v0, 0x0

    .line 552
    .line 553
    array-length v1, p0

    .line 554
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 558
    const/16 v3, 0x13

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 560
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 563
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, p0, v0

    .line 564
    invoke-static {v2, v1, v4, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeLong([BIJ)I

    move-result v1

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    return-object v2
.end method

.method private static encodeMap(Ljava/util/Map;)[B
    .locals 8
    .param p0, "value"    # Ljava/util/Map;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 647
    .line 648
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 650
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 651
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 654
    const/4 v3, 0x2

    invoke-static {v0, v7, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 656
    invoke-static {v0, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 660
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 662
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v6, v6}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encode(Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v4

    .line 663
    array-length v5, v4

    invoke-static {v2, v5, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object v1

    .line 664
    array-length v5, v4

    invoke-static {v4, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    array-length v4, v4

    add-int/2addr v2, v4

    .line 668
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6, v6}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encode(Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v4

    .line 669
    array-length v0, v4

    invoke-static {v2, v0, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object v0

    .line 670
    array-length v1, v4

    invoke-static {v4, v7, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 671
    array-length v1, v4

    add-int/2addr v1, v2

    move v2, v1

    move-object v1, v0

    .line 672
    goto :goto_0

    .line 674
    :cond_0
    return-object v1
.end method

.method private static encodeParcelable(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)[B
    .locals 3
    .param p0, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[B"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v0, 0x0

    .line 447
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 449
    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 456
    invoke-static {v1, v0, p0, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeParcelable([BILandroid/os/Parcelable;Landroid/os/Parcelable$Creator;)[B

    move-result-object v0

    .line 458
    return-object v0
.end method

.method private static encodeParcelableArray([Landroid/os/Parcelable;)[B
    .locals 6
    .param p0, "values"    # [Landroid/os/Parcelable;

    .prologue
    const/4 v0, 0x0

    .line 856
    .line 857
    array-length v2, p0

    .line 858
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 862
    const/16 v3, 0x10

    invoke-static {v1, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 864
    invoke-static {v1, v3, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v2

    .line 867
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 873
    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeParcelable([BILandroid/os/Parcelable;Landroid/os/Parcelable$Creator;)[B

    move-result-object v1

    .line 874
    array-length v2, v1

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_0
    return-object v1
.end method

.method private static encodeSafeParcelable(Lcom/ingenic/iwds/os/SafeParcelable;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B
    .locals 3
    .param p0, "safeParcelable"    # Lcom/ingenic/iwds/os/SafeParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)[B"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "creator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    const/4 v0, 0x0

    .line 463
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 465
    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 472
    invoke-static {v1, v0, p0, p1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeSafeParcelable([BILcom/ingenic/iwds/os/SafeParcelable;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v0

    .line 474
    return-object v0
.end method

.method private static encodeSafeParcelableArray([Lcom/ingenic/iwds/os/SafeParcelable;)[B
    .locals 6
    .param p0, "values"    # [Lcom/ingenic/iwds/os/SafeParcelable;

    .prologue
    const/4 v0, 0x0

    .line 881
    .line 882
    array-length v2, p0

    .line 883
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 887
    const/16 v3, 0xf

    invoke-static {v1, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 889
    invoke-static {v1, v3, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v2

    .line 892
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 898
    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeSafeParcelable([BILcom/ingenic/iwds/os/SafeParcelable;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v1

    .line 899
    array-length v2, v1

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_0
    return-object v1
.end method

.method private static encodeSerializable(Ljava/io/Serializable;)[B
    .locals 8
    .param p0, "value"    # Ljava/io/Serializable;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 767
    new-array v0, v6, [B

    .line 771
    const/16 v1, 0x15

    invoke-static {v0, v2, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v1

    .line 774
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 779
    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeString([BILjava/lang/String;)[B

    move-result-object v1

    .line 780
    array-length v3, v1

    .line 782
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 785
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 786
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 787
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 789
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 790
    array-length v0, v4

    add-int/lit8 v0, v0, 0x4

    invoke-static {v3, v0, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 793
    :try_start_1
    array-length v1, v4

    invoke-static {v0, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 794
    const/4 v3, 0x0

    array-length v5, v4

    invoke-static {v4, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    array-length v2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v1, v2

    .line 803
    :goto_0
    return-object v0

    .line 796
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 797
    :goto_1
    const-string v3, "ByteArrayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v6, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 800
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 796
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static encodeShort(S)[B
    .locals 3
    .param p0, "value"    # S

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    const/4 v1, 0x3

    new-array v1, v1, [B

    .line 373
    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v0

    .line 374
    invoke-static {v1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeShort([BIS)I

    .line 375
    return-object v1
.end method

.method private static encodeShortArray([S)[B
    .locals 5
    .param p0, "values"    # [S

    .prologue
    const/4 v0, 0x0

    .line 516
    .line 517
    array-length v1, p0

    .line 518
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 522
    const/16 v3, 0x1a

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 524
    invoke-static {v2, v3, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 527
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-short v4, p0, v0

    .line 528
    invoke-static {v2, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeShort([BIS)I

    move-result v1

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    :cond_0
    return-object v2
.end method

.method private static encodeSparseArray(Landroid/util/SparseArray;)[B
    .locals 8
    .param p0, "values"    # Landroid/util/SparseArray;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 807
    .line 808
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 809
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 813
    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v2

    .line 815
    invoke-static {v0, v2, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v2

    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 818
    :goto_0
    if-ge v0, v4, :cond_0

    .line 820
    const/4 v5, 0x4

    invoke-static {v3, v5, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object v2

    .line 821
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v3

    .line 824
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7, v7}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encode(Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v5

    .line 825
    array-length v6, v5

    invoke-static {v3, v6, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object v2

    .line 826
    array-length v6, v5

    invoke-static {v5, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    array-length v5, v5

    add-int/2addr v3, v5

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_0
    return-object v2
.end method

.method private static encodeSparseBooleanArray(Landroid/util/SparseBooleanArray;)[B
    .locals 5
    .param p0, "values"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v0, 0x0

    .line 834
    .line 835
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 836
    mul-int/lit8 v1, v2, 0x5

    add-int/lit8 v1, v1, 0x5

    new-array v3, v1, [B

    .line 841
    const/16 v1, 0x16

    invoke-static {v3, v0, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v1

    .line 843
    invoke-static {v3, v1, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 845
    :goto_0
    if-ge v0, v2, :cond_0

    .line 847
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v1

    .line 849
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeBoolean([BIZ)I

    move-result v1

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_0
    return-object v3
.end method

.method private static encodeString(Ljava/lang/String;)[B
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 429
    .line 430
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 433
    invoke-static {v0, v1, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v1

    .line 440
    invoke-static {v0, v1, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeString([BILjava/lang/String;)[B

    move-result-object v0

    .line 442
    return-object v0
.end method

.method private static encodeStringArray([Ljava/lang/String;)[B
    .locals 5
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 624
    .line 625
    array-length v2, p0

    .line 626
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 630
    const/16 v3, 0xe

    invoke-static {v1, v0, v3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeByte([BIB)I

    move-result v3

    .line 632
    invoke-static {v1, v3, v2}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v2

    .line 635
    array-length v3, p0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 640
    invoke-static {v1, v2, v4}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeString([BILjava/lang/String;)[B

    move-result-object v1

    .line 641
    array-length v2, v1

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_0
    return-object v1
.end method

.method private static expand(II[B)[B
    .locals 3
    .param p0, "pos"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 177
    .line 178
    add-int v0, p0, p1

    .line 180
    if-eqz p2, :cond_0

    array-length v1, p2

    if-gt v0, v1, :cond_0

    .line 188
    .end local p2    # "buffer":[B
    :goto_0
    return-object p2

    .line 184
    .restart local p2    # "buffer":[B
    :cond_0
    new-array v0, v0, [B

    .line 185
    if-eqz p2, :cond_1

    .line 186
    invoke-static {p2, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move-object p2, v0

    .line 188
    goto :goto_0
.end method

.method private static readBoolean([B)Z
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1035
    aget-byte v2, p0, v1

    if-ne v2, v0, :cond_0

    .line 1038
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static readByte([B)B
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 1031
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method private static readChar([B)C
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 1089
    .line 1090
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    .line 1091
    return v0
.end method

.method private static readDouble([B)D
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1077
    .line 1078
    aget-byte v0, p0, v6

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1085
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static readFloat([B)F
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 1069
    .line 1070
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 1073
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private static readInt([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 1049
    .line 1050
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 1053
    return v0
.end method

.method private static readLong([B)J
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1057
    .line 1058
    aget-byte v0, p0, v6

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1065
    return-wide v0
.end method

.method private static readParcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 4
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v1, 0x0

    .line 1103
    const-string v2, "ByteArrayUtils"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "creator == null"

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1108
    array-length v0, p0

    invoke-virtual {v2, p0, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1110
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1112
    invoke-interface {p1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 1113
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1115
    return-object v0

    :cond_0
    move v0, v1

    .line 1103
    goto :goto_0
.end method

.method private static readParcelableCreator(Ljava/lang/String;)Landroid/os/Parcelable$Creator;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1411
    .line 1413
    sget-object v3, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sParcelableCreators:Ljava/util/HashMap;

    monitor-enter v3

    .line 1414
    :try_start_0
    sget-object v1, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sParcelableCreators:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    if-nez v1, :cond_1

    .line 1417
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1418
    const-string v4, "CREATOR"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1419
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/Parcelable$Creator;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1445
    :goto_0
    if-nez v1, :cond_0

    .line 1446
    :try_start_2
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1451
    :cond_0
    sget-object v2, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sParcelableCreators:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    :cond_1
    monitor-exit v3

    .line 1465
    return-object v1

    .line 1421
    :catch_0
    move-exception v2

    .line 1422
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1463
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1425
    :catch_1
    move-exception v2

    .line 1426
    :try_start_3
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1429
    :catch_2
    move-exception v2

    .line 1430
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1434
    :catch_3
    move-exception v2

    .line 1435
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1439
    :catch_4
    move-exception v2

    .line 1440
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private static readSafeParcelable([BLcom/ingenic/iwds/os/SafeParcelable$Creator;)Ljava/lang/Object;
    .locals 4
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">([B",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "creator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    const/4 v1, 0x0

    .line 1121
    const-string v2, "ByteArrayUtils"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "creator == null"

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1124
    invoke-static {}, Lcom/ingenic/iwds/os/SafeParcel;->obtain()Lcom/ingenic/iwds/os/SafeParcel;

    move-result-object v2

    .line 1126
    array-length v0, p0

    invoke-virtual {v2, p0, v1, v0}, Lcom/ingenic/iwds/os/SafeParcel;->unmarshall([BII)V

    .line 1128
    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/os/SafeParcel;->setDataPosition(I)V

    .line 1130
    invoke-interface {p1, v2}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable;

    .line 1131
    invoke-virtual {v2}, Lcom/ingenic/iwds/os/SafeParcel;->recycle()V

    .line 1133
    return-object v0

    :cond_0
    move v0, v1

    .line 1121
    goto :goto_0
.end method

.method private static readSafeParcelableCreator(Ljava/lang/String;)Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1472
    .line 1474
    sget-object v3, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sSafeParcelableCreators:Ljava/util/HashMap;

    monitor-enter v3

    .line 1475
    :try_start_0
    sget-object v1, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sSafeParcelableCreators:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    if-nez v1, :cond_1

    .line 1478
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1479
    const-string v4, "CREATOR"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1480
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1506
    :goto_0
    if-nez v1, :cond_0

    .line 1507
    :try_start_2
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1512
    :cond_0
    sget-object v2, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->sSafeParcelableCreators:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    :cond_1
    monitor-exit v3

    .line 1526
    return-object v1

    .line 1482
    :catch_0
    move-exception v2

    .line 1483
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1524
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1486
    :catch_1
    move-exception v2

    .line 1487
    :try_start_3
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found when unmarshalling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1490
    :catch_2
    move-exception v2

    .line 1491
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1495
    :catch_3
    move-exception v2

    .line 1496
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1500
    :catch_4
    move-exception v2

    .line 1501
    const-string v2, "ByteArrayUtils"

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private static readShort([B)S
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 1043
    .line 1044
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 1045
    return v0
.end method

.method private static readString([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 1095
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 1096
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1097
    return-object v0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 170
    const-string v0, "ByteArrayUtils"

    const-string v1, "Unknown type."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "Unknown type"

    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    const-string v0, "String"

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v0, "Integer"

    goto :goto_0

    .line 112
    :pswitch_2
    const-string v0, "Map"

    goto :goto_0

    .line 114
    :pswitch_3
    const-string v0, "SafeParcelable"

    goto :goto_0

    .line 116
    :pswitch_4
    const-string v0, "Parcelable"

    goto :goto_0

    .line 118
    :pswitch_5
    const-string v0, "Short"

    goto :goto_0

    .line 120
    :pswitch_6
    const-string v0, "Long"

    goto :goto_0

    .line 122
    :pswitch_7
    const-string v0, "Float"

    goto :goto_0

    .line 124
    :pswitch_8
    const-string v0, "Double"

    goto :goto_0

    .line 126
    :pswitch_9
    const-string v0, "Boolean"

    goto :goto_0

    .line 128
    :pswitch_a
    const-string v0, "CharSequence"

    goto :goto_0

    .line 130
    :pswitch_b
    const-string v0, "List"

    goto :goto_0

    .line 132
    :pswitch_c
    const-string v0, "SparseArray"

    goto :goto_0

    .line 134
    :pswitch_d
    const-string v0, "Byte Array"

    goto :goto_0

    .line 136
    :pswitch_e
    const-string v0, "String Array"

    goto :goto_0

    .line 138
    :pswitch_f
    const-string v0, "SafeParcelable Array"

    goto :goto_0

    .line 140
    :pswitch_10
    const-string v0, "Parcelable Array"

    goto :goto_0

    .line 142
    :pswitch_11
    const-string v0, "Object Array"

    goto :goto_0

    .line 144
    :pswitch_12
    const-string v0, "Integer Array"

    goto :goto_0

    .line 146
    :pswitch_13
    const-string v0, "Long Array"

    goto :goto_0

    .line 148
    :pswitch_14
    const-string v0, "Byte"

    goto :goto_0

    .line 150
    :pswitch_15
    const-string v0, "Serializable"

    goto :goto_0

    .line 152
    :pswitch_16
    const-string v0, "SparseBooleanArray"

    goto :goto_0

    .line 154
    :pswitch_17
    const-string v0, "Boolean Array"

    goto :goto_0

    .line 156
    :pswitch_18
    const-string v0, "CharSeqenceArray"

    goto :goto_0

    .line 158
    :pswitch_19
    const-string v0, "Character"

    goto :goto_0

    .line 160
    :pswitch_1a
    const-string v0, "Short Array"

    goto :goto_0

    .line 162
    :pswitch_1b
    const-string v0, "Float Array"

    goto :goto_0

    .line 164
    :pswitch_1c
    const-string v0, "Double Array"

    goto :goto_0

    .line 166
    :pswitch_1d
    const-string v0, "Character Array"

    goto :goto_0

    .line 168
    :pswitch_1e
    const-string v0, "File"

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method private static writeBoolean([BIZ)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # Z

    .prologue
    .line 197
    if-eqz p2, :cond_0

    .line 198
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    const/4 v1, 0x1

    aput-byte v1, p0, p1

    move p1, v0

    .line 202
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return p1

    .line 200
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const/4 v1, 0x0

    aput-byte v1, p0, p1

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method private static writeByte([BIB)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # B

    .prologue
    .line 192
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aput-byte p2, p0, p1

    .line 193
    return v0
.end method

.method private static writeChar([BIC)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # C

    .prologue
    .line 240
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 241
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit16 v1, p2, 0xff

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 242
    return p1
.end method

.method private static writeCharSequence([BILjava/lang/CharSequence;)[B
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 265
    .line 269
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 270
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 272
    array-length v1, v0

    .line 273
    add-int/lit8 v2, v1, 0x4

    invoke-static {p1, v2, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object p0

    .line 275
    invoke-static {p0, p1, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result p1

    .line 276
    const/4 v2, 0x0

    invoke-static {v0, v2, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    add-int/2addr p1, v1

    .line 279
    return-object p0
.end method

.method private static writeDouble([BID)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # D

    .prologue
    .line 236
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeLong([BIJ)I

    move-result v0

    return v0
.end method

.method private static writeFloat([BIF)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # F

    .prologue
    .line 232
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v0

    return v0
.end method

.method private static writeInt([BII)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 206
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 207
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 208
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 209
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit16 v1, p2, 0xff

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 210
    return p1
.end method

.method private static writeLong([BIJ)I
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .prologue
    .line 220
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p2

    const/16 v1, 0x38

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 221
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v2, p2

    const/16 v1, 0x30

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 222
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p2

    const/16 v1, 0x28

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 223
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const-wide v2, 0xff00000000L

    and-long/2addr v2, p2

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 224
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const-wide v2, 0xff000000L

    and-long/2addr v2, p2

    const/16 v1, 0x18

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 225
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p2

    const/16 v1, 0x10

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 226
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const-wide/32 v2, 0xff00

    and-long/2addr v2, p2

    const/16 v1, 0x8

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 227
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    const/4 v1, 0x0

    shr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 228
    return p1
.end method

.method private static writeParcelable([BILandroid/os/Parcelable;Landroid/os/Parcelable$Creator;)[B
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "parcelable"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([BI",
            "Landroid/os/Parcelable;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[B"
        }
    .end annotation

    .prologue
    .local p3, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v3, 0x0

    .line 284
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    invoke-interface {p2, v0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    if-nez p3, :cond_0

    .line 300
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeString([BILjava/lang/String;)[B

    move-result-object p0

    .line 301
    array-length p1, p0

    .line 304
    .end local p1    # "offset":I
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object p0

    .line 306
    array-length v0, v1

    invoke-static {p0, p1, v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v0

    .line 308
    array-length v2, v1

    invoke-static {v0, v2, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object p0

    .line 309
    array-length v2, v1

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    array-length v1, v1

    add-int/2addr v0, v1

    .line 312
    return-object p0
.end method

.method private static writeSafeParcelable([BILcom/ingenic/iwds/os/SafeParcelable;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "safeParcelable"    # Lcom/ingenic/iwds/os/SafeParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">([BI",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)[B"
        }
    .end annotation

    .prologue
    .local p3, "creator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    const/4 v3, 0x0

    .line 317
    .line 319
    invoke-static {}, Lcom/ingenic/iwds/os/SafeParcel;->obtain()Lcom/ingenic/iwds/os/SafeParcel;

    move-result-object v0

    .line 321
    invoke-interface {p2, v0, v3}, Lcom/ingenic/iwds/os/SafeParcelable;->writeToParcel(Lcom/ingenic/iwds/os/SafeParcel;I)V

    .line 323
    invoke-virtual {v0}, Lcom/ingenic/iwds/os/SafeParcel;->marshall()[B

    move-result-object v1

    .line 325
    invoke-virtual {v0}, Lcom/ingenic/iwds/os/SafeParcel;->recycle()V

    .line 327
    if-nez p3, :cond_0

    .line 333
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeString([BILjava/lang/String;)[B

    move-result-object p0

    .line 334
    array-length p1, p0

    .line 337
    .end local p1    # "offset":I
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object p0

    .line 339
    array-length v0, v1

    invoke-static {p0, p1, v0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result v0

    .line 341
    array-length v2, v1

    invoke-static {v0, v2, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object p0

    .line 342
    array-length v2, v1

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    array-length v1, v1

    add-int/2addr v0, v1

    .line 345
    return-object p0
.end method

.method private static writeShort([BIS)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S

    .prologue
    .line 214
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 215
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit16 v1, p2, 0xff

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 216
    return p1
.end method

.method private static writeString([BILjava/lang/String;)[B
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 246
    .line 250
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 252
    array-length v1, v0

    .line 254
    add-int/lit8 v2, v1, 0x4

    invoke-static {p1, v2, p0}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->expand(II[B)[B

    move-result-object p0

    .line 256
    invoke-static {p0, p1, v1}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->writeInt([BII)I

    move-result p1

    .line 257
    const/4 v2, 0x0

    invoke-static {v0, v2, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    add-int/2addr p1, v1

    .line 260
    return-object p0
.end method
