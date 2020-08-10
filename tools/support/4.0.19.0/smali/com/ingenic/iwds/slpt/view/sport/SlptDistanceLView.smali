.class public Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptDistanceLView.java"


# instance fields
.field public start_distance:I

.field public train_distance:I

.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 31
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->unit:I

    .line 32
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->train_distance:I

    .line 33
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->start_distance:I

    return-void
.end method


# virtual methods
.method public getStart_distance()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->start_distance:I

    return v0
.end method

.method public getTrain_distance()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->train_distance:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->unit:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 66
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->SVIEW_DISTANCEL:S

    return v0
.end method

.method public setStart_distance(I)V
    .locals 0
    .param p1, "start_distance"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->start_distance:I

    .line 41
    return-void
.end method

.method public setTrain_distance(I)V
    .locals 0
    .param p1, "train_distance"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->train_distance:I

    .line 49
    return-void
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->unit:I

    .line 57
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 72
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->unit:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->train_distance:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->start_distance:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 75
    return-void
.end method
