.class public Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptTodaySportDistanceLView.java"


# instance fields
.field private mSpace:I

.field private show_status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 25
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->mSpace:I

    .line 31
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->show_status:I

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 45
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->SVIEW_TODAY_SPORT_DISTANCEL:S

    return v0
.end method

.method public setNeedAllDisplay()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->show_status:I

    .line 35
    return-void
.end method

.method public setSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->mSpace:I

    .line 29
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 51
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->show_status:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->mSpace:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 53
    return-void
.end method
