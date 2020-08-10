.class public Lcom/mswiniuch/FiveLines2/data/TotalDistance;
.super Ljava/lang/Object;
.source "TotalDistance.java"


# instance fields
.field private final distance:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/mswiniuch/FiveLines2/data/TotalDistance;->distance:D

    return-void
.end method


# virtual methods
.method public getDistance()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/mswiniuch/FiveLines2/data/TotalDistance;->distance:D

    return-wide v0
.end method
