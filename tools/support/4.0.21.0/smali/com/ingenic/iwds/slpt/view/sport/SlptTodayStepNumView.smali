.class public Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptTodayStepNumView.java"


# instance fields
.field private mSpace:I

.field private padding_zero:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 25
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->padding_zero:I

    .line 26
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->mSpace:I

    return-void
.end method


# virtual methods
.method public enable_padding_zero()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->padding_zero:I

    .line 44
    return-void
.end method

.method protected initCapacity()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 39
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->SVIEW_STEPCOUNT:S

    return v0
.end method

.method public setSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->mSpace:I

    .line 29
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 49
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->padding_zero:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->mSpace:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 51
    return-void
.end method
