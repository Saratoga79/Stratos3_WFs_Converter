.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$1;
.super Ljava/lang/Object;
.source "HttpTransportManager.java"

# interfaces
.implements Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

.field final synthetic val$l:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$1;->val$l:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 1
    .param p1, "resCode"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$1;->val$l:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$1;->val$l:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    invoke-interface {v0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;->onReportResult(I)V

    .line 366
    :cond_0
    return-void
.end method
