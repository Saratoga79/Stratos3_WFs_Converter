.class public interface abstract Lcom/ingenic/iwds/remotedevice/RemoteDeviceAppListener;
.super Ljava/lang/Object;
.source "RemoteDeviceAppListener.java"


# virtual methods
.method public abstract onDoneDeleteApp(Ljava/lang/String;I)V
.end method

.method public abstract onDoneInstallApp(Ljava/lang/String;I)V
.end method

.method public abstract onRemoteAppInfoListAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRemoteStorageInfoAvailable(Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V
.end method

.method public abstract onResponseClearAllAppDataAndCache(IILjava/lang/String;II)V
.end method

.method public abstract onResponseClearAppDataOrCache(Ljava/lang/String;II)V
.end method

.method public abstract onResponsePkgSizeInfo(Landroid/content/pm/PackageStats;I)V
.end method

.method public abstract onSendFileProgressForInstall(Ljava/lang/String;I)V
.end method
