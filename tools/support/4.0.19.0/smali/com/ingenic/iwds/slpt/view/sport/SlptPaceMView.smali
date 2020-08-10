.class public Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptPaceMView.java"


# instance fields
.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;->unit:I

    return-void
.end method


# virtual methods
.method public getUnit()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;->unit:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 50
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;->SVIEW_SPEEDM:S

    return v0
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;->unit:I

    .line 40
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 57
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;->unit:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 58
    return-void
.end method
