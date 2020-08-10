.class public Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
.super Ljava/lang/Object;
.source "HmSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HealthSensorHistory"
.end annotation


# instance fields
.field public data:[B

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    .line 35
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "id2"    # I
    .param p2, "data2"    # [B

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    .line 30
    iput p1, p0, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    .line 31
    iput-object p2, p0, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->data:[B

    .line 32
    return-void
.end method
