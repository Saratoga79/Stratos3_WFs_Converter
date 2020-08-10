.class public Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;
.super Ljava/lang/Object;
.source "SyncNodeSwitcher.java"


# static fields
.field public static final SWITCH_CLIENT_2_SERVICE:I = 0x0

.field public static final SWITCH_SERVICE_2_CLOUD:I = 0x1

.field private static sInstance:Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;


# instance fields
.field private mSwitchStateMap:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    .line 21
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 22
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 24
    :cond_0
    return-void
.end method

.method public static declared-synchronized self()Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->sInstance:Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->sInstance:Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;

    .line 31
    :cond_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->sInstance:Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public changeTo(IZ)V
    .locals 2
    .param p1, "switchCode"    # I
    .param p2, "newState"    # Z

    .prologue
    .line 35
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v1

    .line 46
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized destory()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 58
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->sInstance:Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mayGo(I)Z
    .locals 2
    .param p1, "switchCode"    # I

    .prologue
    .line 49
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->mSwitchStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
