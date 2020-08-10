.class public Lcom/ingenic/iwds/datatransactor/FileTransferErrorCode;
.super Ljava/lang/Object;
.source "FileTransferErrorCode.java"


# static fields
.field public static final EFILESTATUS:I = 0x1

.field public static final ENOSDCARD:I = 0x2

.field public static final ESDCARDFULL:I = 0x3

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
    .locals 5
    .param p0, "errorCode"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string v1, "FileTransferErrorCode"

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 83
    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    const-string v0, "no error"

    goto :goto_0

    .line 66
    :pswitch_1
    const-string v0, "file status error"

    goto :goto_0

    .line 70
    :pswitch_2
    const-string v0, "no sdcard"

    goto :goto_0

    .line 74
    :pswitch_3
    const-string v0, "sdcard full"

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
