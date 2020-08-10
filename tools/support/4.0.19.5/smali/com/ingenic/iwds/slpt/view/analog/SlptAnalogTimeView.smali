.class public Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogTimeView;
.super Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;
.source "SlptAnalogTimeView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 26
    sget-short v0, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogTimeView;->SVIEW_ANALOG_TIME:S

    return v0
.end method
