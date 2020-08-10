.class public Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptSportMPauseView.java"


# instance fields
.field display_zero:I

.field no_hour:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->no_hour:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->display_zero:I

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 52
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->SVIEW_SPORTM_PAUSE:S

    return v0
.end method

.method public setDisplay_zero(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->display_zero:I

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->display_zero:I

    goto :goto_0
.end method

.method public setNeedHour(Z)V
    .locals 1
    .param p1, "tag"    # Z

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->no_hour:I

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->no_hour:I

    goto :goto_0
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 57
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->no_hour:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->display_zero:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 59
    return-void
.end method
