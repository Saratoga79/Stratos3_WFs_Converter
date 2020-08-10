.class public Lcom/mswiniuch/FiveLines2/data/Date;
.super Ljava/lang/Object;
.source "Date.java"


# instance fields
.field private final day:I

.field private final month:I

.field private final week:I

.field private final year:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/mswiniuch/FiveLines2/data/Date;->year:I

    .line 16
    iput p2, p0, Lcom/mswiniuch/FiveLines2/data/Date;->month:I

    .line 17
    iput p3, p0, Lcom/mswiniuch/FiveLines2/data/Date;->day:I

    .line 18
    iput p4, p0, Lcom/mswiniuch/FiveLines2/data/Date;->week:I

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Date;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Date;->month:I

    return v0
.end method

.method public getWeek()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Date;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Date;->year:I

    return v0
.end method
