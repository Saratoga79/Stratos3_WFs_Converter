.class public Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptMonthLView.java"


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
    sget-short v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->SVIEW_MONTH_L:S

    return v0
.end method
