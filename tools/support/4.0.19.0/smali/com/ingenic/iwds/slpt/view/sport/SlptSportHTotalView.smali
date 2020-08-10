.class public Lcom/ingenic/iwds/slpt/view/sport/SlptSportHTotalView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptSportHTotalView.java"


# instance fields
.field display_zero:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHTotalView;->display_zero:I

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 41
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHTotalView;->SVIEW_SPORTH_TOTAL:S

    return v0
.end method

.method public setDisplay_zero(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHTotalView;->display_zero:I

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHTotalView;->display_zero:I

    goto :goto_0
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 47
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHTotalView;->display_zero:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 48
    return-void
.end method
