.class public Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptCPDistanceFView.java"


# instance fields
.field public cur_lap_distance:I

.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 10
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->unit:I

    .line 11
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->cur_lap_distance:I

    return-void
.end method


# virtual methods
.method public getCurLapDistance()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->cur_lap_distance:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->unit:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 37
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->SVIEW_CUR_LAP_DISTANCEF:S

    return v0
.end method

.method public setCurLapDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->cur_lap_distance:I

    .line 19
    return-void
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->unit:I

    .line 27
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 44
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCPDistanceFView;->unit:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 46
    return-void
.end method
