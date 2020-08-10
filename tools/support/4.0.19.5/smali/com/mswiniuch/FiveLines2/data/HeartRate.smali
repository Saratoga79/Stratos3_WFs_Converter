.class public Lcom/mswiniuch/FiveLines2/data/HeartRate;
.super Ljava/lang/Object;
.source "HeartRate.java"


# instance fields
.field private final heartRate:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/mswiniuch/FiveLines2/data/HeartRate;->heartRate:I

    return-void
.end method


# virtual methods
.method public getHeartRate()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/HeartRate;->heartRate:I

    return v0
.end method
