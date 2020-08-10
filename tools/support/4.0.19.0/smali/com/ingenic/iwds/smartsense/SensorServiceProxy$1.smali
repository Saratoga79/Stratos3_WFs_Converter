.class Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;
.super Ljava/lang/Object;
.source "SensorServiceProxy.java"

# interfaces
.implements Lcom/ingenic/iwds/smartsense/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/SensorServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$500(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    .line 305
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$600(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->notifySensorAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V

    .line 306
    return-void
.end method

.method public onSensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/ingenic/iwds/smartsense/SensorEvent;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$500(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    .line 299
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->access$600(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->notifySensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V

    .line 300
    return-void
.end method
