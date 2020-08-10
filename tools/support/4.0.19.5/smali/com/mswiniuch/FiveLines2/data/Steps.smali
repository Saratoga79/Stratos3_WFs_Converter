.class public Lcom/mswiniuch/FiveLines2/data/Steps;
.super Ljava/lang/Object;
.source "Steps.java"


# instance fields
.field private final steps:I

.field private final target:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/mswiniuch/FiveLines2/data/Steps;->steps:I

    .line 14
    iput p2, p0, Lcom/mswiniuch/FiveLines2/data/Steps;->target:I

    return-void
.end method


# virtual methods
.method public getSteps()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Steps;->steps:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Steps;->target:I

    return v0
.end method
