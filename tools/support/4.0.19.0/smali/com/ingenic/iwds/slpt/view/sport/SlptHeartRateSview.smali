.class public Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptHeartRateSview.java"


# static fields
.field public static final HEARRATE_INVISABLE:I = 0x1

.field public static final HEARTRATE_BURNING:I = 0x2

.field public static final HEARTRATE_HIGH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 42
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->SVIEW_HEARTRATE:S

    return v0
.end method
