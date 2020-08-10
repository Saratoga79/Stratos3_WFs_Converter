.class public Lcom/ingenic/iwds/slpt/view/sport/SlptLPAvgHeartRateSview;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptLPAvgHeartRateSview.java"


# static fields
.field public static final HEARRATE_INVISABLE:I = 0x1

.field public static final HEARTRATE_BURNING:I = 0x2

.field public static final HEARTRATE_HIGH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 36
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptLPAvgHeartRateSview;->SVIEW_LAST_LAP_AVG_HEART:S

    return v0
.end method
