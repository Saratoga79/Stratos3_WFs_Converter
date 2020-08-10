.class public Lcom/ingenic/iwds/uniconnect/link/Link$LinkState;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/link/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkState"
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DISCONNECTED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 96
    const-string v0, "LinkState"

    const/4 v1, 0x1

    const-string v2, "Implement me."

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "disconnected"

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "connected"

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
