.class public Lcom/mswiniuch/FiveLines2/data/Battery;
.super Ljava/lang/Object;
.source "Battery.java"


# instance fields
.field private final level:I

.field private final scale:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/mswiniuch/FiveLines2/data/Battery;->level:I

    .line 14
    iput p2, p0, Lcom/mswiniuch/FiveLines2/data/Battery;->scale:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Battery;->level:I

    return v0
.end method

.method public getScale()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Battery;->scale:I

    return v0
.end method
