.class public Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedDayView;
.super Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedTimeView;
.source "SlptPredrawedDayView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 6
    sget-short v0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedDayView;->SVIEW_PRE_DRAWED_DAY:S

    return v0
.end method
