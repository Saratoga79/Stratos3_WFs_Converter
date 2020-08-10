.class public final Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
.super Ljava/lang/Object;
.source "SlptViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegisterPictureParam"
.end annotation


# instance fields
.field public backgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    .locals 2

    .prologue
    .line 652
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;-><init>()V

    .line 653
    .local v0, "param":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    .line 654
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->clone()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    move-result-object v0

    return-object v0
.end method
