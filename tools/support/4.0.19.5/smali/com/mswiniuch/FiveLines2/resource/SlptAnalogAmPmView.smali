.class public Lcom/mswiniuch/FiveLines2/resource/SlptAnalogAmPmView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptAnalogAmPmView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .line 10
    sget-short v0, Lcom/mswiniuch/FiveLines2/resource/SlptAnalogAmPmView;->SVIEW_ALTITUDE:S

    return v0
.end method
