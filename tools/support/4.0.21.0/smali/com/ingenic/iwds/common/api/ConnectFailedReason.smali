.class public Lcom/ingenic/iwds/common/api/ConnectFailedReason;
.super Ljava/lang/Object;
.source "ConnectFailedReason.java"


# static fields
.field public static final R_SERVICE_AUTH_FALIED:I = 0x2

.field public static final R_SERVICE_UNAVAILABLE:I = 0x1

.field public static final R_SUCCESS:I


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "reasonCode"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/ingenic/iwds/common/api/ConnectFailedReason;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public getReasonCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/ingenic/iwds/common/api/ConnectFailedReason;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/ingenic/iwds/common/api/ConnectFailedReason;->a:I

    packed-switch v0, :pswitch_data_0

    .line 67
    const/4 v0, 0x1

    const-string v1, "Implement me."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 68
    const-string v0, "Assert"

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string v0, "success"

    goto :goto_0

    .line 61
    :pswitch_1
    const-string v0, "service is unavailable"

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v0, "service authentication failure"

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
