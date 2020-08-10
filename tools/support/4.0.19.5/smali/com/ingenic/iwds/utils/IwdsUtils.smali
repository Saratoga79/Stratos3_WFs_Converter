.class public Lcom/ingenic/iwds/utils/IwdsUtils;
.super Ljava/lang/Object;
.source "IwdsUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInArray(Landroid/util/SparseArray;IILjava/lang/Object;)V
    .locals 1
    .param p1, "firstKey"    # I
    .param p2, "secondKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<TT;>;>;IITT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<TT;>;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 28
    if-nez v0, :cond_1

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :cond_1
    monitor-enter p0

    .line 37
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 33
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static deleteInArray(Landroid/util/SparseArray;II)V
    .locals 1
    .param p1, "firstKey"    # I
    .param p2, "secondKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<TT;>;>;"
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 46
    if-eqz v0, :cond_0

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 51
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 52
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 54
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
