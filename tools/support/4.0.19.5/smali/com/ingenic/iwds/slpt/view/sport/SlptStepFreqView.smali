.class public Lcom/ingenic/iwds/slpt/view/sport/SlptStepFreqView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptStepFreqView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 16
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptStepFreqView;->SVIEW_STEPFREQ:S

    return v0
.end method
