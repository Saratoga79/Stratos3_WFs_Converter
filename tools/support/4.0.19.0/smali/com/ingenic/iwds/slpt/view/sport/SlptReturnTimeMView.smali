.class public Lcom/ingenic/iwds/slpt/view/sport/SlptReturnTimeMView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptReturnTimeMView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptReturnTimeMView;->SVIEW_RETURN_TIMEM:S

    return v0
.end method
