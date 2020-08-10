.class public Lcom/ingenic/iwds/slpt/view/sport/SlptWeekPicArrayView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;
.source "SlptWeekPicArrayView.java"


# instance fields
.field private continue_mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptWeekPicArrayView;->continue_mode:I

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 40
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptWeekPicArrayView;->SVIEW_WEEK_PIC_ARRAY:S

    return v0
.end method

.method public setContinueMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptWeekPicArrayView;->continue_mode:I

    .line 30
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 35
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptWeekPicArrayView;->continue_mode:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 36
    return-void
.end method
