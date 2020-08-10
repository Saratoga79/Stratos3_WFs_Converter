.class public Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
.source "SlptArcAnglePicView.java"


# static fields
.field public static final DRAW_ANTICLOCKWISE:I = 0x0

.field public static final DRAW_CLOCKWISE:I = 0x1

.field public static final DRAW_CURRENT_ANGLE:I = 0x0

.field public static final DRAW_REMAIN_ANGLE:I = 0x1


# instance fields
.field public draw_clockwise:I

.field public draw_remain_angle:I

.field public full_angle:I

.field public len_angle:I

.field public start_angle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 14
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->start_angle:I

    .line 15
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->len_angle:I

    .line 16
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->full_angle:I

    .line 17
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->draw_remain_angle:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->draw_clockwise:I

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 22
    sget-short v0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->SVIEW_ARC_ANGLE_PIC:S

    return v0
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 28
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->start_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->len_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 30
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->full_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->draw_clockwise:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 32
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/arc/SlptArcAnglePicView;->draw_remain_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 33
    return-void
.end method
