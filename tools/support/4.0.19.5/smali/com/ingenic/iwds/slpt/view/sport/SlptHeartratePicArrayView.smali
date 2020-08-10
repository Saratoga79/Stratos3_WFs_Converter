.class public Lcom/ingenic/iwds/slpt/view/sport/SlptHeartratePicArrayView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;
.source "SlptHeartratePicArrayView.java"


# instance fields
.field private continue_mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartratePicArrayView;->continue_mode:I

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 39
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartratePicArrayView;->SVIEW_LAST_HEART_PIC_ARRAY:S

    return v0
.end method

.method public setContinueMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartratePicArrayView;->continue_mode:I

    .line 29
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 34
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartratePicArrayView;->continue_mode:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 35
    return-void
.end method
