.class public final Lcom/huami/watch/transport/DataBundle;
.super Ljava/lang/Object;
.source "DataBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/transport/DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final EMPTY:Lcom/huami/watch/transport/DataBundle;


# instance fields
.field private mAllowFds:Z

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFdsKnown:Z

.field private mHasFds:Z

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/huami/watch/util/Config;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/DataBundle;->DEBUG:Z

    .line 28
    new-instance v0, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v0}, Lcom/huami/watch/transport/DataBundle;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/DataBundle;->EMPTY:Lcom/huami/watch/transport/DataBundle;

    .line 29
    sget-object v0, Lcom/huami/watch/transport/DataBundle;->EMPTY:Lcom/huami/watch/transport/DataBundle;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    .line 1549
    new-instance v0, Lcom/huami/watch/transport/DataBundle$1;

    invoke-direct {v0}, Lcom/huami/watch/transport/DataBundle$1;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/DataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    .line 42
    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/DataBundle;->mHasFds:Z

    .line 45
    iput-boolean v1, p0, Lcom/huami/watch/transport/DataBundle;->mFdsKnown:Z

    .line 46
    iput-boolean v1, p0, Lcom/huami/watch/transport/DataBundle;->mAllowFds:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    .line 42
    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/DataBundle;->mHasFds:Z

    .line 45
    iput-boolean v1, p0, Lcom/huami/watch/transport/DataBundle;->mFdsKnown:Z

    .line 46
    iput-boolean v1, p0, Lcom/huami/watch/transport/DataBundle;->mAllowFds:Z

    .line 85
    const-class v0, Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/DataBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/transport/DataBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/huami/watch/transport/DataBundle;)V
    .locals 5
    .param p1, "b"    # Lcom/huami/watch/transport/DataBundle;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    .line 42
    iput-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    .line 44
    iput-boolean v4, p0, Lcom/huami/watch/transport/DataBundle;->mHasFds:Z

    .line 45
    iput-boolean v0, p0, Lcom/huami/watch/transport/DataBundle;->mFdsKnown:Z

    .line 46
    iput-boolean v0, p0, Lcom/huami/watch/transport/DataBundle;->mAllowFds:Z

    .line 96
    iget-object v0, p1, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    .line 98
    iget-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 99
    iget-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    :goto_0
    iget-object v0, p1, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    .line 110
    :goto_1
    iget-boolean v0, p1, Lcom/huami/watch/transport/DataBundle;->mHasFds:Z

    iput-boolean v0, p0, Lcom/huami/watch/transport/DataBundle;->mHasFds:Z

    .line 111
    iget-boolean v0, p1, Lcom/huami/watch/transport/DataBundle;->mFdsKnown:Z

    iput-boolean v0, p0, Lcom/huami/watch/transport/DataBundle;->mFdsKnown:Z

    .line 112
    iget-object v0, p1, Lcom/huami/watch/transport/DataBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 113
    return-void

    .line 101
    :cond_0
    iput-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    .line 107
    :cond_1
    iput-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/DataBundle;-><init>(Lcom/huami/watch/transport/DataBundle;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 1629
    const/4 v0, 0x0

    .line 1630
    .local v0, "mask":I
    invoke-virtual {p0}, Lcom/huami/watch/transport/DataBundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1631
    or-int/lit8 v0, v0, 0x1

    .line 1633
    :cond_0
    return v0
.end method

.method public hasFileDescriptors()Z
    .locals 8

    .prologue
    .line 316
    iget-boolean v7, p0, Lcom/huami/watch/transport/DataBundle;->mFdsKnown:Z

    if-nez v7, :cond_1

    .line 317
    const/4 v2, 0x0

    .line 319
    .local v2, "fdFound":Z
    iget-object v7, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v7, :cond_2

    .line 320
    iget-object v7, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    const/4 v2, 0x1

    .line 372
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/huami/watch/transport/DataBundle;->mHasFds:Z

    .line 373
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huami/watch/transport/DataBundle;->mFdsKnown:Z

    .line 375
    .end local v2    # "fdFound":Z
    :cond_1
    iget-boolean v7, p0, Lcom/huami/watch/transport/DataBundle;->mHasFds:Z

    return v7

    .line 325
    .restart local v2    # "fdFound":Z
    :cond_2
    iget-object v7, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 326
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    :goto_1
    if-nez v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 328
    .local v5, "obj":Ljava/lang/Object;
    instance-of v7, v5, Landroid/os/Parcelable;

    if-eqz v7, :cond_4

    .line 329
    check-cast v5, Landroid/os/Parcelable;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-interface {v5}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 331
    const/4 v2, 0x1

    .line 332
    goto :goto_0

    .line 334
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v7, v5, [Landroid/os/Parcelable;

    if-eqz v7, :cond_6

    .line 335
    check-cast v5, [Landroid/os/Parcelable;

    .end local v5    # "obj":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Landroid/os/Parcelable;

    .line 336
    .local v0, "array":[Landroid/os/Parcelable;
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    .local v4, "n":I
    :goto_2
    if-ltz v4, :cond_3

    .line 337
    aget-object v7, v0, v4

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 339
    const/4 v2, 0x1

    .line 340
    goto :goto_1

    .line 336
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 343
    .end local v0    # "array":[Landroid/os/Parcelable;
    .end local v4    # "n":I
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v7, v5, Landroid/util/SparseArray;

    if-eqz v7, :cond_8

    move-object v1, v5

    .line 344
    check-cast v1, Landroid/util/SparseArray;

    .line 346
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "n":I
    :goto_3
    if-ltz v4, :cond_3

    .line 347
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    .line 349
    const/4 v2, 0x1

    .line 350
    goto :goto_1

    .line 346
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 353
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v4    # "n":I
    :cond_8
    instance-of v7, v5, Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    move-object v0, v5

    .line 354
    check-cast v0, Ljava/util/ArrayList;

    .line 357
    .local v0, "array":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/os/Parcelable;

    if-eqz v7, :cond_3

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "n":I
    :goto_4
    if-ltz v4, :cond_3

    .line 360
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 361
    .local v6, "p":Landroid/os/Parcelable;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    .line 363
    const/4 v2, 0x1

    .line 364
    goto/16 :goto_1

    .line 359
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method

.method readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 1611
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1612
    .local v0, "offset":I
    add-int v2, v0, p2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1616
    .local v1, "p":Landroid/os/Parcel;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1617
    invoke-virtual {v1, p1, v0, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1618
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1621
    iput-object v1, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1622
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/huami/watch/transport/DataBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 164
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/huami/watch/transport/DataBundle;->unparcel()V

    .line 233
    iget-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1639
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1643
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unparcel()V
    .locals 5

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 205
    iget-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 206
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    .line 209
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    .line 210
    iget-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v4, p0, Lcom/huami/watch/transport/DataBundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v4, p0, Lcom/huami/watch/transport/DataBundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v0, v0, -0x1

    .line 214
    goto :goto_1

    .line 215
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 216
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "N":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, -0x1

    .line 1572
    iget-object v6, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v6, :cond_0

    .line 1573
    iget-object v6, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    .line 1574
    .local v3, "length":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    iget-object v6, p0, Lcom/huami/watch/transport/DataBundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1606
    .end local v3    # "length":I
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 1583
    .local v5, "oldPos":I
    iget-object v6, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 1584
    iget-object v6, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 1585
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1588
    :cond_1
    iget-object v6, p0, Lcom/huami/watch/transport/DataBundle;->mMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1589
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1591
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1592
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 1595
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1599
    .local v4, "newPos":I
    sub-int v3, v4, v5

    .line 1600
    .restart local v3    # "length":I
    add-int/lit8 v6, v5, -0x4

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1601
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1603
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method
