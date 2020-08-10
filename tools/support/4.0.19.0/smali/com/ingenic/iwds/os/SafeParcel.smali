.class public final Lcom/ingenic/iwds/os/SafeParcel;
.super Ljava/lang/Object;
.source "SafeParcel.java"


# static fields
.field public static final STRING_CREATOR:Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:[Lcom/ingenic/iwds/os/SafeParcel;

.field private static final b:[Lcom/ingenic/iwds/os/SafeParcel;

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 150
    new-array v0, v1, [Lcom/ingenic/iwds/os/SafeParcel;

    sput-object v0, Lcom/ingenic/iwds/os/SafeParcel;->a:[Lcom/ingenic/iwds/os/SafeParcel;

    .line 151
    new-array v0, v1, [Lcom/ingenic/iwds/os/SafeParcel;

    sput-object v0, Lcom/ingenic/iwds/os/SafeParcel;->b:[Lcom/ingenic/iwds/os/SafeParcel;

    .line 158
    const-string v0, "safeparcel"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/ingenic/iwds/os/SafeParcel$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/os/SafeParcel$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/os/SafeParcel;->STRING_CREATOR:Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    .line 1590
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/os/SafeParcel;->e:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/os/SafeParcel;->a(J)V

    .line 176
    return-void
.end method

.method private final a(Ljava/lang/ClassLoader;)Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1594
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1595
    if-nez v2, :cond_0

    .line 1651
    :goto_0
    return-object v0

    .line 1599
    :cond_0
    sget-object v3, Lcom/ingenic/iwds/os/SafeParcel;->e:Ljava/util/HashMap;

    monitor-enter v3

    .line 1600
    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/os/SafeParcel;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1601
    if-nez v0, :cond_4

    .line 1602
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1603
    sget-object v1, Lcom/ingenic/iwds/os/SafeParcel;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1605
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    if-nez v0, :cond_3

    .line 1608
    if-nez p1, :cond_1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1610
    :goto_2
    const-string v4, "CREATOR"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1611
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1640
    if-nez v0, :cond_2

    .line 1641
    :try_start_2
    new-instance v0, Lcom/ingenic/iwds/os/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcelable protocol requires a SafeParcelable.Creator object called  CREATOR on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1608
    :cond_1
    const/4 v0, 0x1

    .line 1609
    :try_start_3
    invoke-static {v2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal access when unmarshalling: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1615
    new-instance v0, Lcom/ingenic/iwds/os/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :catch_1
    move-exception v0

    .line 1619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found when unmarshalling: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1621
    new-instance v0, Lcom/ingenic/iwds/os/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1624
    :catch_2
    move-exception v0

    .line 1625
    new-instance v0, Lcom/ingenic/iwds/os/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcelable protocol requires a SafeParcelable.Creator object called  CREATOR on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1629
    :catch_3
    move-exception v0

    .line 1630
    new-instance v0, Lcom/ingenic/iwds/os/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcelable protocol requires a SafeParcelable.Creator object called  CREATOR on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :catch_4
    move-exception v0

    .line 1635
    new-instance v0, Lcom/ingenic/iwds/os/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1647
    :cond_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    :cond_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->d:Z

    if-eqz v0, :cond_0

    .line 264
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeFreeBuffer(J)V

    .line 266
    :cond_0
    return-void
.end method

.method private static a(III)V
    .locals 3

    .prologue
    .line 430
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 180
    iput-wide p1, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->d:Z

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/ingenic/iwds/os/SafeParcel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->d:Z

    goto :goto_0
.end method

.method private final a(Lcom/ingenic/iwds/os/RemoteBundle;)V
    .locals 1

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 527
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 535
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 1143
    :goto_0
    if-lez p2, :cond_0

    .line 1144
    invoke-virtual {p0, p3}, Lcom/ingenic/iwds/os/SafeParcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 1145
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    add-int/lit8 p2, p2, -0x1

    .line 1147
    goto :goto_0

    .line 1148
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    if-nez p1, :cond_1

    .line 510
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 520
    :cond_0
    return-void

    .line 514
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 515
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 516
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeValue(Ljava/lang/Object;)V

    .line 518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 1190
    :goto_0
    if-lez p2, :cond_0

    .line 1191
    invoke-virtual {p0, p3}, Lcom/ingenic/iwds/os/SafeParcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 1192
    invoke-virtual {p0, p3}, Lcom/ingenic/iwds/os/SafeParcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 1193
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    add-int/lit8 p2, p2, -0x1

    .line 1195
    goto :goto_0

    .line 1196
    :cond_0
    return-void
.end method

.method private a([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 1360
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1361
    invoke-virtual {p0, p3}, Lcom/ingenic/iwds/os/SafeParcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 1362
    aput-object v1, p1, v0

    .line 1360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_0
    return-void
.end method

.method private final b(Ljava/lang/ClassLoader;)Ljava/io/Serializable;
    .locals 5

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1686
    if-nez v1, :cond_0

    .line 1687
    const/4 v0, 0x0

    .line 1706
    :goto_0
    return-object v0

    .line 1689
    :cond_0
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->createByteArray()[B

    move-result-object v0

    .line 1690
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1692
    :try_start_0
    new-instance v0, Lcom/ingenic/iwds/os/SafeParcel$2;

    invoke-direct {v0, p0, v2, p1}, Lcom/ingenic/iwds/os/SafeParcel$2;-><init>(Lcom/ingenic/iwds/os/SafeParcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 1706
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1708
    :catch_0
    move-exception v0

    .line 1709
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1713
    :catch_1
    move-exception v0

    .line 1714
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 269
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 270
    iget-boolean v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->d:Z

    if-eqz v0, :cond_0

    .line 271
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeDestroy(J)V

    .line 273
    :cond_0
    iput-wide v2, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    .line 275
    :cond_1
    return-void
.end method

.method private final c(Ljava/lang/ClassLoader;)Lcom/ingenic/iwds/os/RemoteBundle;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1732
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    .line 1733
    if-gez v0, :cond_0

    .line 1745
    :cond_0
    return-object v1
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateByteArray(J)[B
.end method

.method private static native nativeDataAvail(J)I
.end method

.method private static native nativeDataCapacity(J)I
.end method

.method private static native nativeDataPosition(J)I
.end method

.method private static native nativeDataSize(J)I
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeFreeBuffer(J)V
.end method

.method private static native nativeMarshall(J)[B
.end method

.method private static native nativeReadDouble(J)D
.end method

.method private static native nativeReadFloat(J)F
.end method

.method private static native nativeReadInt(J)I
.end method

.method private static native nativeReadLong(J)J
.end method

.method private static native nativeReadString(J)Ljava/lang/String;
.end method

.method private static native nativeSetDataCapacity(JI)V
.end method

.method private static native nativeSetDataPosition(JI)V
.end method

.method private static native nativeSetDataSize(JI)V
.end method

.method private static native nativeUnmarshall(J[BII)V
.end method

.method private static native nativeWriteByteArray(J[BII)V
.end method

.method private static native nativeWriteDouble(JD)V
.end method

.method private static native nativeWriteFloat(JF)V
.end method

.method private static native nativeWriteInt(JI)V
.end method

.method private static native nativeWriteLong(JJ)V
.end method

.method private static native nativeWriteString(JLjava/lang/String;)V
.end method

.method public static obtain()Lcom/ingenic/iwds/os/SafeParcel;
    .locals 5

    .prologue
    .line 194
    sget-object v2, Lcom/ingenic/iwds/os/SafeParcel;->a:[Lcom/ingenic/iwds/os/SafeParcel;

    monitor-enter v2

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 197
    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/os/SafeParcel;->a:[Lcom/ingenic/iwds/os/SafeParcel;

    aget-object v0, v0, v1

    .line 198
    if-eqz v0, :cond_0

    .line 199
    sget-object v3, Lcom/ingenic/iwds/os/SafeParcel;->a:[Lcom/ingenic/iwds/os/SafeParcel;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 203
    monitor-exit v2

    .line 208
    :goto_1
    return-object v0

    .line 196
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 206
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    new-instance v0, Lcom/ingenic/iwds/os/SafeParcel;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ingenic/iwds/os/SafeParcel;-><init>(J)V

    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static final obtain(I)Lcom/ingenic/iwds/os/SafeParcel;
    .locals 1
    .param p0, "obj"    # I

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected static final obtain(J)Lcom/ingenic/iwds/os/SafeParcel;
    .locals 6
    .param p0, "obj"    # J

    .prologue
    .line 216
    sget-object v2, Lcom/ingenic/iwds/os/SafeParcel;->b:[Lcom/ingenic/iwds/os/SafeParcel;

    monitor-enter v2

    .line 218
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 219
    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/os/SafeParcel;->b:[Lcom/ingenic/iwds/os/SafeParcel;

    aget-object v0, v0, v1

    .line 220
    if-eqz v0, :cond_0

    .line 221
    sget-object v3, Lcom/ingenic/iwds/os/SafeParcel;->b:[Lcom/ingenic/iwds/os/SafeParcel;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 225
    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->a(J)V

    .line 227
    monitor-exit v2

    .line 232
    :goto_1
    return-object v0

    .line 218
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 230
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    new-instance v0, Lcom/ingenic/iwds/os/SafeParcel;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;-><init>(J)V

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final createBooleanArray()[Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1204
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v4

    .line 1206
    if-ltz v4, :cond_2

    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->dataAvail()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    if-gt v4, v0, :cond_2

    .line 1207
    new-array v2, v4, [Z

    move v3, v1

    .line 1209
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1210
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v2, v3

    .line 1211
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1210
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 1217
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final createByteArray()[B
    .locals 2

    .prologue
    .line 1247
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeCreateByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final createCharArray()[C
    .locals 4

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1451
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->dataAvail()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    if-gt v2, v0, :cond_0

    .line 1452
    new-array v0, v2, [C

    .line 1453
    const/4 v1, 0x0

    .line 1454
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1455
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 1456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1461
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final createDoubleArray()[D
    .locals 6

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1530
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->dataAvail()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    if-gt v2, v0, :cond_0

    .line 1531
    new-array v0, v2, [D

    .line 1532
    const/4 v1, 0x0

    .line 1533
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1534
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readDouble()D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 1535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final createFloatArray()[F
    .locals 4

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1491
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->dataAvail()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    if-gt v2, v0, :cond_0

    .line 1492
    new-array v0, v2, [F

    .line 1493
    const/4 v1, 0x0

    .line 1494
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1495
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readFloat()F

    move-result v3

    aput v3, v0, v1

    .line 1496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1500
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final createIntArray()[I
    .locals 4

    .prologue
    .line 1372
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1373
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->dataAvail()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    if-gt v2, v0, :cond_0

    .line 1374
    new-array v0, v2, [I

    .line 1375
    const/4 v1, 0x0

    .line 1376
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1377
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v3

    aput v3, v0, v1

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1382
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final createLongArray()[J
    .locals 6

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1431
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->dataAvail()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    if-gt v2, v0, :cond_0

    .line 1432
    new-array v0, v2, [J

    .line 1433
    const/4 v1, 0x0

    .line 1434
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1435
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 1436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1440
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1310
    if-ltz v2, :cond_0

    .line 1311
    new-array v0, v2, [Ljava/lang/String;

    .line 1312
    const/4 v1, 0x0

    .line 1313
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1314
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1815
    if-gez v1, :cond_1

    .line 1816
    const/4 v0, 0x0

    .line 1823
    :cond_0
    return-object v0

    .line 1818
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1819
    :goto_0
    if-lez v1, :cond_0

    .line 1820
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final createTypedArray(Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1858
    .local p1, "c":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1859
    if-gez v2, :cond_1

    .line 1860
    const/4 v0, 0x0

    .line 1869
    :cond_0
    return-object v0

    .line 1862
    :cond_1
    invoke-interface {p1, v2}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 1863
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1864
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1865
    invoke-interface {p1, p0}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1863
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final createTypedArrayList(Lcom/ingenic/iwds/os/SafeParcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "c":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    const/4 v0, 0x0

    .line 1757
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1758
    if-gez v2, :cond_0

    .line 1772
    :goto_0
    return-object v0

    .line 1761
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1762
    :goto_1
    if-lez v2, :cond_2

    .line 1763
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1764
    invoke-interface {p1, p0}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1767
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 1772
    goto :goto_0
.end method

.method public final dataAvail()I
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeDataAvail(J)I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeDataCapacity(J)I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeDataPosition(J)I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeDataSize(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/ingenic/iwds/os/SafeParcel;->b()V

    .line 287
    return-void
.end method

.method public final marshall()[B
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeMarshall(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1351
    if-gez v1, :cond_0

    .line 1352
    const/4 v0, 0x0

    .line 1356
    :goto_0
    return-object v0

    .line 1354
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 1355
    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->a([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1133
    if-gez v1, :cond_0

    .line 1134
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return-object v0

    .line 1136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1137
    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->a(Ljava/util/List;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .param p1, "val"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 1228
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v3

    .line 1229
    array-length v0, p1

    if-ne v3, v0, :cond_1

    move v2, v1

    .line 1231
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1232
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, p1, v2

    .line 1233
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1232
    goto :goto_1

    .line 1237
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_2
    return-void
.end method

.method public final readByte()B
    .locals 1

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .param p1, "val"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1257
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->createByteArray()[B

    move-result-object v0

    .line 1258
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 1259
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    return-void

    .line 1261
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1473
    array-length v0, p1

    if-ne v1, v0, :cond_0

    .line 1474
    const/4 v0, 0x0

    .line 1475
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1476
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v0

    .line 1477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1480
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1482
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1330
    if-gez v2, :cond_1

    .line 1331
    const/4 v0, 0x0

    .line 1339
    :cond_0
    return-object v0

    .line 1332
    :cond_1
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1333
    const/4 v1, 0x0

    .line 1334
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    .prologue
    .line 1099
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeReadDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 1550
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1551
    array-length v0, p1

    if-ne v1, v0, :cond_0

    .line 1552
    const/4 v0, 0x0

    .line 1553
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1554
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 1555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1558
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1560
    :cond_1
    return-void
.end method

.method public final readFloat()F
    .locals 2

    .prologue
    .line 1090
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeReadFloat(J)F

    move-result v0

    return v0
.end method

.method public final readFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .prologue
    .line 1511
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1512
    array-length v0, p1

    if-ne v1, v0, :cond_0

    .line 1513
    const/4 v0, 0x0

    .line 1514
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1515
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readFloat()F

    move-result v2

    aput v2, p1, v0

    .line 1516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1519
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1521
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1181
    if-gez v1, :cond_0

    .line 1182
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return-object v0

    .line 1184
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1185
    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->a(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readInt()I
    .locals 2

    .prologue
    .line 1063
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeReadInt(J)I

    move-result v0

    return v0
.end method

.method public final readIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1394
    array-length v0, p1

    if-ne v1, v0, :cond_0

    .line 1395
    const/4 v0, 0x0

    .line 1396
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    aput v2, p1, v0

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1401
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths: "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    .line 1121
    invoke-direct {p0, p1, v0, p2}, Lcom/ingenic/iwds/os/SafeParcel;->a(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1122
    return-void
.end method

.method public final readLong()J
    .locals 2

    .prologue
    .line 1081
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeReadLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1413
    array-length v0, p1

    if-ne v1, v0, :cond_0

    .line 1414
    const/4 v0, 0x0

    .line 1415
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1416
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 1417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1420
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    .line 1169
    invoke-direct {p0, p1, v0, p2}, Lcom/ingenic/iwds/os/SafeParcel;->a(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1170
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Lcom/ingenic/iwds/os/SafeParcelable;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1570
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->a(Ljava/lang/ClassLoader;)Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    move-result-object v0

    .line 1571
    if-nez v0, :cond_0

    .line 1572
    const/4 v0, 0x0

    .line 1578
    :goto_0
    return-object v0

    .line 1574
    :cond_0
    instance-of v1, v0, Lcom/ingenic/iwds/os/SafeParcelable$ClassLoaderCreator;

    if-eqz v1, :cond_1

    .line 1575
    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable$ClassLoaderCreator;

    .line 1576
    invoke-interface {v0, p0, p1}, Lcom/ingenic/iwds/os/SafeParcelable$ClassLoaderCreator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable;

    goto :goto_0

    .line 1578
    :cond_1
    invoke-interface {v0, p0}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable;

    goto :goto_0
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Lcom/ingenic/iwds/os/SafeParcelable;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1662
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1663
    if-gez v2, :cond_1

    .line 1664
    const/4 v0, 0x0

    .line 1672
    :cond_0
    return-object v0

    .line 1666
    :cond_1
    new-array v0, v2, [Lcom/ingenic/iwds/os/SafeParcelable;

    .line 1667
    const/4 v1, 0x0

    .line 1668
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1669
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->readParcelable(Ljava/lang/ClassLoader;)Lcom/ingenic/iwds/os/SafeParcelable;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 1681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->b(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1072
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeReadString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1292
    array-length v0, p1

    if-ne v1, v0, :cond_0

    .line 1293
    const/4 v0, 0x0

    .line 1294
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 1296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1299
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1272
    if-gez v2, :cond_1

    .line 1273
    const/4 v0, 0x0

    .line 1281
    :cond_0
    return-object v0

    .line 1274
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    .line 1275
    const/4 v1, 0x0

    .line 1276
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1833
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1834
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1835
    const/4 v0, 0x0

    .line 1837
    :goto_0
    if-ge v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    .line 1838
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1841
    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1842
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1845
    :cond_1
    :goto_2
    if-ge v0, v1, :cond_2

    .line 1846
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1845
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1848
    :cond_2
    return-void
.end method

.method public final readTypedArray([Ljava/lang/Object;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1881
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1882
    array-length v0, p1

    if-ne v1, v0, :cond_1

    .line 1883
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1884
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1885
    invoke-interface {p2, p0}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 1883
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1887
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p1, v0

    goto :goto_1

    .line 1892
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad array lengths"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1894
    :cond_2
    return-void
.end method

.method public final readTypedList(Ljava/util/List;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1783
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1784
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v2

    .line 1785
    const/4 v0, 0x0

    .line 1787
    :goto_0
    if-ge v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 1788
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1789
    invoke-interface {p2, p0}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1787
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1791
    :cond_0
    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1795
    :cond_1
    :goto_2
    if-ge v0, v2, :cond_3

    .line 1796
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1797
    invoke-interface {p2, p0}, Lcom/ingenic/iwds/os/SafeParcelable$Creator;->createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1795
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1799
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1803
    :cond_3
    :goto_4
    if-ge v0, v1, :cond_4

    .line 1804
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1803
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1806
    :cond_4
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x1

    .line 1904
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    .line 1906
    packed-switch v1, :pswitch_data_0

    .line 1977
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    .line 1978
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1908
    :pswitch_0
    const/4 v0, 0x0

    .line 1974
    :goto_0
    return-object v0

    .line 1911
    :pswitch_1
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1914
    :pswitch_2
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1917
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 1920
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->readParcelable(Ljava/lang/ClassLoader;)Lcom/ingenic/iwds/os/SafeParcelable;

    move-result-object v0

    goto :goto_0

    .line 1923
    :pswitch_5
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 1926
    :pswitch_6
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1929
    :pswitch_7
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1932
    :pswitch_8
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1935
    :pswitch_9
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1938
    :pswitch_a
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1941
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1944
    :pswitch_c
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->createBooleanArray()[Z

    move-result-object v0

    goto :goto_0

    .line 1947
    :pswitch_d
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->createByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 1950
    :pswitch_e
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1953
    :pswitch_f
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1956
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1959
    :pswitch_11
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->createIntArray()[I

    move-result-object v0

    goto :goto_0

    .line 1962
    :pswitch_12
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->createLongArray()[J

    move-result-object v0

    goto :goto_0

    .line 1965
    :pswitch_13
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 1968
    :pswitch_14
    invoke-virtual {p0}, Lcom/ingenic/iwds/os/SafeParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    goto/16 :goto_0

    .line 1971
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Lcom/ingenic/iwds/os/SafeParcelable;

    move-result-object v0

    goto/16 :goto_0

    .line 1974
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->c(Ljava/lang/ClassLoader;)Lcom/ingenic/iwds/os/RemoteBundle;

    move-result-object v0

    goto/16 :goto_0

    .line 1906
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_16
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/ingenic/iwds/os/SafeParcel;->a()V

    .line 245
    iget-boolean v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->d:Z

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/ingenic/iwds/os/SafeParcel;->a:[Lcom/ingenic/iwds/os/SafeParcel;

    .line 252
    :goto_0
    monitor-enter v0

    .line 253
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    .line 254
    :try_start_0
    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 255
    aput-object p0, v0, v1

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_2
    return-void

    .line 248
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    .line 249
    sget-object v0, Lcom/ingenic/iwds/os/SafeParcel;->b:[Lcom/ingenic/iwds/os/SafeParcel;

    goto :goto_0

    .line 253
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_2
    :try_start_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final setDataCapacity(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeSetDataCapacity(JI)V

    .line 353
    return-void
.end method

.method public final setDataPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeSetDataPosition(JI)V

    .line 334
    return-void
.end method

.method public final setDataSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeSetDataSize(JI)V

    .line 306
    return-void
.end method

.method public final unmarshall([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offest"    # I
    .param p3, "length"    # I

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ingenic/iwds/os/SafeParcel;->nativeUnmarshall(J[BII)V

    .line 376
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/Object;

    .prologue
    .line 736
    if-nez p1, :cond_1

    .line 737
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 748
    :cond_0
    return-void

    .line 741
    :cond_1
    array-length v1, p1

    .line 742
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 743
    const/4 v0, 0x0

    .line 744
    :goto_0
    if-ge v0, v1, :cond_0

    .line 745
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeValue(Ljava/lang/Object;)V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 4
    .param p1, "val"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 600
    if-nez p1, :cond_1

    .line 601
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 612
    :cond_0
    return-void

    .line 605
    :cond_1
    array-length v3, p1

    .line 606
    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    move v2, v1

    .line 608
    :goto_0
    if-ge v2, v3, :cond_0

    .line 609
    aget-boolean v0, p1, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 610
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 609
    goto :goto_1
.end method

.method public final writeByte(B)V
    .locals 0
    .param p1, "val"    # B

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 506
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .param p1, "val"    # [B

    .prologue
    const/4 v1, 0x0

    .line 621
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeByteArray([BII)V

    .line 622
    return-void

    :cond_0
    move v0, v1

    .line 621
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 2
    .param p1, "val"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/ingenic/iwds/os/SafeParcel;->a(III)V

    .line 641
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ingenic/iwds/os/SafeParcel;->nativeWriteByteArray(J[BII)V

    goto :goto_0
.end method

.method public final writeCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    .prologue
    .line 693
    if-nez p1, :cond_1

    .line 694
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 705
    :cond_0
    return-void

    .line 698
    :cond_1
    array-length v1, p1

    .line 699
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 700
    const/4 v0, 0x0

    .line 701
    :goto_0
    if-ge v0, v1, :cond_0

    .line 702
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .prologue
    .line 672
    if-nez p1, :cond_1

    .line 673
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 684
    :cond_0
    return-void

    .line 677
    :cond_1
    array-length v1, p1

    .line 678
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 679
    const/4 v0, 0x0

    .line 680
    :goto_0
    if-ge v0, v1, :cond_0

    .line 681
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1, p2}, Lcom/ingenic/iwds/os/SafeParcel;->nativeWriteDouble(JD)V

    .line 475
    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 820
    if-nez p1, :cond_1

    .line 821
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 832
    :cond_0
    return-void

    .line 825
    :cond_1
    array-length v1, p1

    .line 826
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 827
    const/4 v0, 0x0

    .line 828
    :goto_0
    if-ge v0, v1, :cond_0

    .line 829
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/ingenic/iwds/os/SafeParcel;->writeDouble(D)V

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeFloat(F)V
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeWriteFloat(JF)V

    .line 465
    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .prologue
    .line 799
    if-nez p1, :cond_1

    .line 800
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 811
    :cond_0
    return-void

    .line 804
    :cond_1
    array-length v1, p1

    .line 805
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 806
    const/4 v0, 0x0

    .line 807
    :goto_0
    if-ge v0, v1, :cond_0

    .line 808
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeFloat(F)V

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeInt(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeWriteInt(JI)V

    .line 445
    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .prologue
    .line 757
    if-nez p1, :cond_1

    .line 758
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 769
    :cond_0
    return-void

    .line 762
    :cond_1
    array-length v1, p1

    .line 763
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 764
    const/4 v0, 0x0

    .line 765
    :goto_0
    if-ge v0, v1, :cond_0

    .line 766
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .param p1, "val"    # Ljava/util/List;

    .prologue
    .line 579
    if-nez p1, :cond_1

    .line 580
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 591
    :cond_0
    return-void

    .line 584
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 585
    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 587
    :goto_0
    if-ge v0, v1, :cond_0

    .line 588
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeValue(Ljava/lang/Object;)V

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1, p2}, Lcom/ingenic/iwds/os/SafeParcel;->nativeWriteLong(JJ)V

    .line 455
    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 778
    if-nez p1, :cond_1

    .line 779
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 790
    :cond_0
    return-void

    .line 783
    :cond_1
    array-length v1, p1

    .line 784
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 785
    const/4 v0, 0x0

    .line 786
    :goto_0
    if-ge v0, v1, :cond_0

    .line 787
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/ingenic/iwds/os/SafeParcel;->writeLong(J)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "val"    # Ljava/util/Map;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->a(Ljava/util/Map;)V

    .line 496
    return-void
.end method

.method public final writeParcelable(Lcom/ingenic/iwds/os/SafeParcelable;I)V
    .locals 1
    .param p1, "p"    # Lcom/ingenic/iwds/os/SafeParcelable;
    .param p2, "flags"    # I

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    .line 553
    invoke-interface {p1, p0, p2}, Lcom/ingenic/iwds/os/SafeParcelable;->writeToParcel(Lcom/ingenic/iwds/os/SafeParcel;I)V

    goto :goto_0
.end method

.method public final writeParcelableArray([Lcom/ingenic/iwds/os/SafeParcelable;I)V
    .locals 3
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "val":[Lcom/ingenic/iwds/os/SafeParcelable;, "[TT;"
    if-nez p1, :cond_1

    .line 716
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 727
    :cond_0
    return-void

    .line 720
    :cond_1
    array-length v1, p1

    .line 721
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 722
    const/4 v0, 0x0

    .line 723
    :goto_0
    if-ge v0, v1, :cond_0

    .line 724
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lcom/ingenic/iwds/os/SafeParcel;->writeParcelable(Lcom/ingenic/iwds/os/SafeParcelable;I)V

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 5
    .param p1, "val"    # Ljava/io/Serializable;

    .prologue
    .line 914
    if-nez p1, :cond_0

    .line 915
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    .line 935
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    .line 922
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 924
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 925
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 926
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 928
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SafeParcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/ingenic/iwds/os/SafeParcel;->c:J

    invoke-static {v0, v1, p1}, Lcom/ingenic/iwds/os/SafeParcel;->nativeWriteString(JLjava/lang/String;)V

    .line 485
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 651
    if-nez p1, :cond_1

    .line 652
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 663
    :cond_0
    return-void

    .line 656
    :cond_1
    array-length v1, p1

    .line 657
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 658
    const/4 v0, 0x0

    .line 659
    :goto_0
    if-ge v0, v1, :cond_0

    .line 660
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 868
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 878
    :cond_0
    return-void

    .line 871
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 872
    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    move v1, v0

    .line 874
    :goto_0
    if-ge v1, v2, :cond_0

    .line 875
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    .line 876
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final writeTypedArray([Lcom/ingenic/iwds/os/SafeParcelable;I)V
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .local p1, "val":[Lcom/ingenic/iwds/os/SafeParcelable;, "[TT;"
    const/4 v1, 0x0

    .line 888
    if-nez p1, :cond_1

    .line 889
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 905
    :cond_0
    return-void

    .line 893
    :cond_1
    array-length v2, p1

    .line 894
    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    move v0, v1

    .line 895
    :goto_0
    if-ge v0, v2, :cond_0

    .line 896
    aget-object v3, p1, v0

    .line 897
    if-eqz v3, :cond_2

    .line 898
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 899
    invoke-interface {v3, p0, p2}, Lcom/ingenic/iwds/os/SafeParcelable;->writeToParcel(Lcom/ingenic/iwds/os/SafeParcel;I)V

    .line 895
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .line 841
    if-nez p1, :cond_1

    .line 842
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 858
    :cond_0
    return-void

    .line 845
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 847
    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    move v1, v2

    .line 848
    :goto_0
    if-ge v1, v3, :cond_0

    .line 849
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/SafeParcelable;

    .line 850
    if-eqz v0, :cond_2

    .line 851
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 852
    invoke-interface {v0, p0, v2}, Lcom/ingenic/iwds/os/SafeParcelable;->writeToParcel(Lcom/ingenic/iwds/os/SafeParcel;I)V

    .line 856
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 857
    goto :goto_0

    .line 854
    :cond_2
    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 949
    if-nez p1, :cond_0

    .line 950
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1055
    .end local p1    # "v":Ljava/lang/Object;
    :goto_0
    return-void

    .line 952
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 953
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 954
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 956
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 957
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 958
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    goto :goto_0

    .line 960
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 961
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 962
    check-cast p1, Ljava/util/Map;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 964
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v2, :cond_4

    .line 966
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 967
    check-cast p1, Lcom/ingenic/iwds/os/RemoteBundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->a(Lcom/ingenic/iwds/os/RemoteBundle;)V

    goto :goto_0

    .line 969
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Lcom/ingenic/iwds/os/SafeParcelable;

    if-eqz v2, :cond_5

    .line 970
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 971
    check-cast p1, Lcom/ingenic/iwds/os/SafeParcelable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeParcelable(Lcom/ingenic/iwds/os/SafeParcelable;I)V

    goto :goto_0

    .line 973
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    .line 974
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 975
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    goto :goto_0

    .line 977
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 978
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 979
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeLong(J)V

    goto :goto_0

    .line 981
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_7
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 982
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 983
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeFloat(F)V

    goto :goto_0

    .line 985
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 986
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 987
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 989
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 990
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 991
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    .line 993
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 995
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 996
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 998
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 999
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1000
    check-cast p1, Ljava/util/List;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1002
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_e

    .line 1003
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1004
    check-cast p1, [Z

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 1006
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    .line 1007
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1008
    check-cast p1, [B

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1010
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1011
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1012
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 1016
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1017
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1019
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v0, p1, [Lcom/ingenic/iwds/os/SafeParcelable;

    if-eqz v0, :cond_12

    .line 1020
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1021
    check-cast p1, [Lcom/ingenic/iwds/os/SafeParcelable;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Lcom/ingenic/iwds/os/SafeParcelable;

    invoke-virtual {p0, p1, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeParcelableArray([Lcom/ingenic/iwds/os/SafeParcelable;I)V

    goto/16 :goto_0

    .line 1023
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v0, p1, [I

    if-eqz v0, :cond_13

    .line 1024
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1025
    check-cast p1, [I

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1027
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13
    instance-of v0, p1, [J

    if-eqz v0, :cond_14

    .line 1028
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1029
    check-cast p1, [J

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 1031
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_15

    .line 1032
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1033
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1036
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    .line 1042
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1043
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1045
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_17

    .line 1047
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/os/SafeParcel;->writeInt(I)V

    .line 1048
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 1051
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
