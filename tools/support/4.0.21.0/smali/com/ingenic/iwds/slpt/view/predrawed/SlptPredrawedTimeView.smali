.class public Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedTimeView;
.super Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedAnalogView;
.source "SlptPredrawedTimeView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedAnalogView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 6
    sget-short v0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedTimeView;->SVIEW_PRE_DRAWED_TIME:S

    return v0
.end method
