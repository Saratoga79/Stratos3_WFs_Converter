.class public Lcom/ingenic/iwds/slpt/RleBuffer$Offset;
.super Ljava/lang/Object;
.source "RleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/RleBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Offset"
.end annotation


# instance fields
.field public dst:I

.field public src:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "srcOff"    # I
    .param p2, "dstOff"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->src:I

    .line 51
    iput p2, p0, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->dst:I

    .line 52
    return-void
.end method
