.class public Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
.source "SlptRotatePictureView.java"


# instance fields
.field private centerX:I

.field private centerY:I

.field public draw_clockwise:I

.field public full_angle:I

.field public show_100:I

.field public show_zero:I

.field public start_angle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 29
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->centerX:I

    .line 30
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->centerY:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->start_angle:I

    .line 33
    const/16 v0, 0x168

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->full_angle:I

    .line 34
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->show_zero:I

    .line 35
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->show_100:I

    .line 36
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->draw_clockwise:I

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 40
    sget-short v0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->SVIEW_ROTATE_PIC:S

    return v0
.end method

.method public setRotate_center(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->centerX:I

    .line 45
    iput p2, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->centerY:I

    .line 46
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 51
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->start_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->full_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->draw_clockwise:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->show_zero:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->show_100:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->centerX:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotatePictureView;->centerY:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 58
    return-void
.end method
