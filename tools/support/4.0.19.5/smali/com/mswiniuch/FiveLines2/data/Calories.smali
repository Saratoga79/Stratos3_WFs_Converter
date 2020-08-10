.class public Lcom/mswiniuch/FiveLines2/data/Calories;
.super Ljava/lang/Object;
.source "Calories.java"


# instance fields
.field private final calories:I


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/mswiniuch/FiveLines2/data/Calories;->calories:I

    return-void
.end method


# virtual methods
.method public getCalories()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Calories;->calories:I

    return v0
.end method
