.class public Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptSportMView.java"


# instance fields
.field display_zero:I

.field show_hour_time:Z

.field start_time:I

.field train_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 28
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->train_time:I

    .line 30
    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->show_hour_time:Z

    .line 32
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->start_time:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->display_zero:I

    return-void
.end method


# virtual methods
.method public getStart_time()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->start_time:I

    return v0
.end method

.method public getTrain_time()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->train_time:I

    return v0
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 68
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->SVIEW_SPORTM:S

    return v0
.end method

.method public setDisplay_zero(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->display_zero:I

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->display_zero:I

    goto :goto_0
.end method

.method public setMinute_with_hour()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->show_hour_time:Z

    .line 45
    return-void
.end method

.method public setStart_time(I)V
    .locals 0
    .param p1, "start_time"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->start_time:I

    .line 41
    return-void
.end method

.method public setTrain_time(I)V
    .locals 0
    .param p1, "train_time"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->train_time:I

    .line 53
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 74
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->train_time:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->start_time:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 76
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->show_hour_time:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 81
    :goto_0
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->display_zero:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 82
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    goto :goto_0
.end method
