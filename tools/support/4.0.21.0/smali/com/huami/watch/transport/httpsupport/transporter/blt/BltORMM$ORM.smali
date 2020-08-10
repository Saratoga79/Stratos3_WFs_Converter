.class public Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;
.super Ljava/lang/Object;
.source "BltORMM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ORM"
.end annotation


# static fields
.field public static STATE_OUT:I


# instance fields
.field public identity:Ljava/lang/String;

.field public stamp:Ljava/lang/Long;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM$ORM;->STATE_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
