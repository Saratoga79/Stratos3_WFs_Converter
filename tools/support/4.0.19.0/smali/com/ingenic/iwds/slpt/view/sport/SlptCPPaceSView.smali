.class public Lcom/ingenic/iwds/slpt/view/sport/SlptCPPaceSView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptCPPaceSView.java"


# instance fields
.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPPaceSView;->unit:I

    return-void
.end method


# virtual methods
.method public getUnit()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPPaceSView;->unit:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 27
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPPaceSView;->SVIEW_CUR_LAP_PACES:S

    return v0
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPPaceSView;->unit:I

    .line 17
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 33
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPPaceSView;->unit:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 34
    return-void
.end method
