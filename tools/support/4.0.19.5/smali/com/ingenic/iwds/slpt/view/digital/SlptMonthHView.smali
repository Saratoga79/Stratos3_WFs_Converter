.class public Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptMonthHView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 26
    sget-short v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->SVIEW_MONTH_H:S

    return v0
.end method
