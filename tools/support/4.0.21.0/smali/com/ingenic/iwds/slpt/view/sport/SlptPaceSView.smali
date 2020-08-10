.class public Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptPaceSView.java"


# instance fields
.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;->unit:I

    return-void
.end method


# virtual methods
.method public getUnit()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;->unit:I

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
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;->SVIEW_SPEEDS:S

    return v0
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;->unit:I

    .line 39
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 56
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;->unit:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 57
    return-void
.end method
