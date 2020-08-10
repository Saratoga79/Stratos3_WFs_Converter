.class public Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;
.super Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.source "SlptTotalDistanceLView.java"


# instance fields
.field private mSpace:I

.field private show_status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;-><init>()V

    .line 8
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->show_status:I

    .line 9
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->mSpace:I

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
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->SVIEW_TOTALDISTANCEL:S

    return v0
.end method

.method public setNeedAllDisplay()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->show_status:I

    .line 12
    return-void
.end method

.method public setSpace(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->mSpace:I

    .line 16
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 31
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->show_status:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 32
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->mSpace:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 33
    return-void
.end method
