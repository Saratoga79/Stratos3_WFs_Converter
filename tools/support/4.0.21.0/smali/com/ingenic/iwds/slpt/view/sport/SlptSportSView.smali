.class public Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptSportSView.java"


# instance fields
.field start_time:I

.field train_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 29
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->train_time:I

    .line 30
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->start_time:I

    return-void
.end method


# virtual methods
.method public getStart_time()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->start_time:I

    return v0
.end method

.method public getTrain_time()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->train_time:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 56
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->SVIEW_SPORTS:S

    return v0
.end method

.method public setStart_time(I)V
    .locals 0
    .param p1, "start_time"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->start_time:I

    .line 38
    return-void
.end method

.method public setTrain_time(I)V
    .locals 0
    .param p1, "train_time"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->train_time:I

    .line 46
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 62
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->train_time:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->start_time:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 64
    return-void
.end method
