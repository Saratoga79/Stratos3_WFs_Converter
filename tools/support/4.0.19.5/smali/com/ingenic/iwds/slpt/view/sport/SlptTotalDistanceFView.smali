.class public Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptTotalDistanceFView.java"


# instance fields
.field private mSpace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->mSpace:I

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 25
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->SVIEW_TOTALDISTANCEF:S

    return v0
.end method

.method public setSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->mSpace:I

    .line 10
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 15
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->mSpace:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 16
    return-void
.end method
