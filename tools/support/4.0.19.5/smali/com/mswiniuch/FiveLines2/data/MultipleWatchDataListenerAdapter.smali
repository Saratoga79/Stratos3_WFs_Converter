.class public Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListenerAdapter;
.super Ljava/lang/Object;
.source "MultipleWatchDataListenerAdapter.java"

# interfaces
.implements Lcom/huami/watch/watchface/WatchDataListener;


# instance fields
.field private final listener:Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListener;

.field private final type:Lcom/mswiniuch/FiveLines2/data/DataType;


# direct methods
.method public constructor <init>(Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListener;Lcom/mswiniuch/FiveLines2/data/DataType;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListenerAdapter;->listener:Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListener;

    .line 15
    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListenerAdapter;->type:Lcom/mswiniuch/FiveLines2/data/DataType;

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListenerAdapter;->type:Lcom/mswiniuch/FiveLines2/data/DataType;

    invoke-virtual {v0}, Lcom/mswiniuch/FiveLines2/data/DataType;->getDataType()I

    move-result v0

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    .line 25
    invoke-static {p1}, Lcom/mswiniuch/FiveLines2/data/DataType;->fromValue(I)Lcom/mswiniuch/FiveLines2/data/DataType;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListenerAdapter;->listener:Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListener;

    invoke-virtual {p1, p2}, Lcom/mswiniuch/FiveLines2/data/DataType;->getValue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListener;->onDataUpdate(Lcom/mswiniuch/FiveLines2/data/DataType;Ljava/lang/Object;)V

    return-void
.end method
