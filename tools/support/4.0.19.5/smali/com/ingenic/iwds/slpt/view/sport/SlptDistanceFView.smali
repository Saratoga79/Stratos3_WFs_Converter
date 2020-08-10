.class public Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptDistanceFView.java"


# instance fields
.field public start_distance:I

.field public train_distance:I

.field public unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 32
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->unit:I

    .line 33
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->train_distance:I

    .line 34
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->start_distance:I

    return-void
.end method


# virtual methods
.method public getStart_distance()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->start_distance:I

    return v0
.end method

.method public getTrain_distance()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->train_distance:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->unit:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 68
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->SVIEW_DISTANCEF:S

    return v0
.end method

.method public setStart_distance(I)V
    .locals 0
    .param p1, "start_distance"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->start_distance:I

    .line 42
    return-void
.end method

.method public setTrain_distance(I)V
    .locals 0
    .param p1, "train_distance"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->train_distance:I

    .line 50
    return-void
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->unit:I

    .line 58
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 75
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->unit:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->train_distance:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->start_distance:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 78
    return-void
.end method
