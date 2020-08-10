.class public Lcom/ingenic/iwds/slpt/view/arc/SlptArcPicView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
.source "SlptArcPicView.java"


# instance fields
.field end_x:I

.field end_y:I

.field start_x:I

.field start_y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 14
    sget-short v0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcPicView;->SVIEW_ARC_PIC:S

    return v0
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 20
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcPicView;->start_x:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 21
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcPicView;->start_y:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 22
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcPicView;->end_x:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 23
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcPicView;->end_y:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 24
    return-void
.end method
