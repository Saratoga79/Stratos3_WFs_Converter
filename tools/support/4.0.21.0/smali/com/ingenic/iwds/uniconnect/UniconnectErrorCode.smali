.class public Lcom/ingenic/iwds/uniconnect/UniconnectErrorCode;
.super Ljava/lang/Object;
.source "UniconnectErrorCode.java"


# static fields
.field public static final EDISABLED:I = -0x7

.field public static final EDISCOVERYISONGING:I = -0x8

.field public static final ELINKDISCONNECTED:I = -0x2

.field public static final ELINKUNBONDED:I = -0x1

.field public static final EPORTBUSY:I = -0x3

.field public static final EPORTCLOSED:I = -0x5

.field public static final EPORTDISCONNECTED:I = -0x6

.field public static final EREMOTEEXCEPTION:I = -0x4

.field public static final ETIMEOUT:I = -0xb

.field public static final NOERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorString(I)Ljava/lang/String;
    .locals 4
    .param p0, "error"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 109
    const-string v1, "UniconnectErrorCode"

    const/4 v2, 0x1

    const-string v3, "Implement me."

    invoke-static {v1, v2, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 114
    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "link was unbonded"

    goto :goto_0

    .line 84
    :pswitch_1
    const-string v0, "link was disconnected"

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "port is busy(grabbed)"

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "remote service was died"

    goto :goto_0

    .line 99
    :pswitch_4
    const-string v0, "port was closed"

    goto :goto_0

    .line 104
    :pswitch_5
    const-string v0, "port was disconnected"

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
