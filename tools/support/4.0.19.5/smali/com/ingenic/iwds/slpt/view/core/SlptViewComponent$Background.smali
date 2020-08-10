.class public Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;
.super Ljava/lang/Object;
.source "SlptViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Background"
.end annotation


# instance fields
.field public color:I

.field public picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const v0, 0xffffff

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    return-void
.end method
