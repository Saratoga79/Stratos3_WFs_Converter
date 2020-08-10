.class public Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;
.super Ljava/lang/Object;
.source "SlptViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Padding"
.end annotation


# instance fields
.field public bottom:S

.field public left:S

.field public right:S

.field public top:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    .line 443
    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    .line 447
    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    .line 451
    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->bottom:S

    return-void
.end method
