.class public Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptWeekView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x7

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 26
    sget-short v0, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->SVIEW_WEEK:S

    return v0
.end method
