.class public Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptMinuteLView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 28
    sget-short v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->SVIEW_MINUTE_L:S

    return v0
.end method
