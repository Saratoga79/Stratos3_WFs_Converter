.class public Lcom/mswiniuch/FiveLines2/data/TodayFloor;
.super Ljava/lang/Object;
.source "TodayFloor.java"


# instance fields
.field private final floor:I


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-int p1, p1

    .line 12
    iput p1, p0, Lcom/mswiniuch/FiveLines2/data/TodayFloor;->floor:I

    return-void
.end method


# virtual methods
.method public getFloor()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/TodayFloor;->floor:I

    return v0
.end method
