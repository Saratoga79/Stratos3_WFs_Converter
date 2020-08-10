.class public Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;
.super Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
.source "SlptAbsoluteLayout.java"


# instance fields
.field public positionOfStartPointX:B

.field public positionOfStartPointY:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;-><init>()V

    .line 35
    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->positionOfStartPointX:B

    .line 44
    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->positionOfStartPointY:B

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 48
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->SVIEW_ABSOLUTE_LAYOUT:S

    return v0
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 54
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->positionOfStartPointX:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 55
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->positionOfStartPointY:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 56
    return-void
.end method
