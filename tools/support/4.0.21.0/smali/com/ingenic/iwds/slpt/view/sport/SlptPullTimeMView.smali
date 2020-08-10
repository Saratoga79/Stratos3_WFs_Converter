.class public Lcom/ingenic/iwds/slpt/view/sport/SlptPullTimeMView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptPullTimeMView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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
    .line 35
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptPullTimeMView;->SVIEW_PULL_TIMEM:S

    return v0
.end method
