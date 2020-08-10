.class public Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptTodaySportDistanceFView.java"


# instance fields
.field private mSpace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->mSpace:I

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 44
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->SVIEW_TODAY_SPORT_DISTANCEF:S

    return v0
.end method

.method public setSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->mSpace:I

    .line 29
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 34
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->mSpace:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 35
    return-void
.end method
