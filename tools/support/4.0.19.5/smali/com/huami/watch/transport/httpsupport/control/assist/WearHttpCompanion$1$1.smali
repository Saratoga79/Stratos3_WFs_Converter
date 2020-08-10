.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$1;
.super Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method protected isAuto()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method
