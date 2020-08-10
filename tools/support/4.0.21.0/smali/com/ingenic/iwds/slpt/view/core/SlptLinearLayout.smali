.class public Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;
.super Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
.source "SlptLinearLayout.java"


# instance fields
.field public orientation:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    return-void
.end method


# virtual methods
.method protected initType()S
    .locals 1

    .prologue
    .line 39
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->SVIEW_LINEAR_LAYOUT:S

    return v0
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 45
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 46
    return-void
.end method
