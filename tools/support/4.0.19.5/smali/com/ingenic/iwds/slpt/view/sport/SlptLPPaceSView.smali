.class public Lcom/ingenic/iwds/slpt/view/sport/SlptLPPaceSView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptLPPaceSView.java"


# instance fields
.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptLPPaceSView;->unit:I

    return-void
.end method


# virtual methods
.method public getUnit()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptLPPaceSView;->unit:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 46
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptLPPaceSView;->SVIEW_LAST_LAP_PACES:S

    return v0
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptLPPaceSView;->unit:I

    .line 35
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 52
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptLPPaceSView;->unit:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 53
    return-void
.end method
