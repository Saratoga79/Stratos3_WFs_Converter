.class public Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.source "SlptPredrawedNumView.java"


# static fields
.field public static final DRAW_ANTICLOCKWISE:I = 0x0

.field public static final DRAW_CLOCKWISE:I = 0x1

.field public static final DRAW_CURRENT_ANGLE:I = 0x0

.field public static final DRAW_REMAIN_ANGLE:I = 0x1


# instance fields
.field public draw_clockwise:I

.field public draw_remain_angle:I

.field public full_angle:I

.field group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

.field public len_angle:I

.field num:I

.field quad:I

.field public start_angle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x168

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;-><init>()V

    .line 8
    sget-object v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->emptyGroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 9
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->num:I

    .line 10
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->quad:I

    .line 17
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->start_angle:I

    .line 18
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->len_angle:I

    .line 19
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->full_angle:I

    .line 20
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->draw_remain_angle:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->draw_clockwise:I

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 34
    sget-short v0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->SVIEW_PRE_DRAWED_NUM:S

    return v0
.end method

.method public setNum(II)V
    .locals 0
    .param p1, "num"    # I
    .param p2, "quad"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->num:I

    .line 25
    iput p2, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->quad:I

    .line 26
    return-void
.end method

.method public setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 30
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 40
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->num:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->quad:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->start_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->len_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->full_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->draw_clockwise:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedNumView;->draw_remain_angle:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 48
    return-void
.end method
