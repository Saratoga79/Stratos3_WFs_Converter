.class public interface abstract Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;
.super Ljava/lang/Object;
.source "RemoteDeviceProcessListener.java"


# virtual methods
.method public abstract onDoneKillProcess(Ljava/lang/String;)V
.end method

.method public abstract onResponseRunningAppProcessInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteProcessInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResponseSystemMemoryInfo(JJ)V
.end method
