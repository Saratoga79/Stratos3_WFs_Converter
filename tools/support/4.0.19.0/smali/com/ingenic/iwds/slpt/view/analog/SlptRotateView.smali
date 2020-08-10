.class public Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
.source "SlptRotateView.java"


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
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 9
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->start_angle:I

    .line 10
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->full_angle:I

    .line 11
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_zero:I

    .line 12
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_100:I

    .line 13
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->draw_clockwise:I

    .line 14
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->centerX:I

    .line 15
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->centerY:I

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 19
    sget-short v0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->SVIEW_ROTATE_VIEW:S

    return v0
.end method

.method public setHide_100()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_100:I

    .line 33
    return-void
.end method

.method public setHide_zero()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_zero:I

    .line 25
    return-void
.end method

.method public setRotate_center(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->centerX:I

    .line 41
    iput p2, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->centerY:I

    .line 42
    return-void
.end method

.method public setShow_100()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_100:I

    .line 37
    return-void
.end method

.method public setShow_zero()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_zero:I

    .line 29
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 47
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->start_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->full_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->draw_clockwise:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_zero:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->show_100:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->centerX:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateView;->centerY:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 54
    return-void
.end method
