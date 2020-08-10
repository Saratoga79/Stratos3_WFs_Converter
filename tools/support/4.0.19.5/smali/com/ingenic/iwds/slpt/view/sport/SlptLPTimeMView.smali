.class public Lcom/ingenic/iwds/slpt/view/sport/SlptLPTimeMView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptLPTimeMView.java"


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
    .line 27
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 32
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptLPTimeMView;->SVIEW_LAST_LAP_TIMEM:S

    return v0
.end method
