.class public abstract Lcom/huami/watch/transport/ITransportDataService$Stub;
.super Landroid/os/Binder;
.source "ITransportDataService.java"

# interfaces
.implements Lcom/huami/watch/transport/ITransportDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/ITransportDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/ITransportDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huami.watch.transport.ITransportDataService"

.field static final TRANSACTION_registerChannelListener:I = 0x3

.field static final TRANSACTION_registerComponentName:I = 0x7

.field static final TRANSACTION_registerDataListener:I = 0x1

.field static final TRANSACTION_registersendCallbackListener:I = 0x5

.field static final TRANSACTION_sendData:I = 0x8

.field static final TRANSACTION_unregisterChannelListener:I = 0x4

.field static final TRANSACTION_unregisterDataListener:I = 0x2

.field static final TRANSACTION_unregistersendCallbackListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p0, p0, v0}, Lcom/huami/watch/transport/ITransportDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huami/watch/transport/ITransportDataService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.huami.watch.transport.ITransportDataService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huami/watch/transport/ITransportDataService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/huami/watch/transport/ITransportDataService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/huami/watch/transport/ITransportDataService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huami/watch/transport/ITransportDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huami/watch/transport/ITransportDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/transport/ITransportDataListener;

    move-result-object v1

    .line 54
    .local v1, "_arg1":Lcom/huami/watch/transport/ITransportDataListener;
    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/transport/ITransportDataService$Stub;->registerDataListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/huami/watch/transport/ITransportDataListener;
    :sswitch_2
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/ITransportDataService$Stub;->unregisterDataListener(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huami/watch/transport/ITransportChannelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/transport/ITransportChannelListener;

    move-result-object v1

    .line 74
    .local v1, "_arg1":Lcom/huami/watch/transport/ITransportChannelListener;
    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/transport/ITransportDataService$Stub;->registerChannelListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/huami/watch/transport/ITransportChannelListener;
    :sswitch_4
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/ITransportDataService$Stub;->unregisterChannelListener(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huami/watch/transport/ITransportCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/transport/ITransportCallbackListener;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Lcom/huami/watch/transport/ITransportCallbackListener;
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/ITransportDataService$Stub;->registersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Lcom/huami/watch/transport/ITransportCallbackListener;
    :sswitch_6
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huami/watch/transport/ITransportCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/transport/ITransportCallbackListener;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Lcom/huami/watch/transport/ITransportCallbackListener;
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/ITransportDataService$Stub;->unregistersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":Lcom/huami/watch/transport/ITransportCallbackListener;
    :sswitch_7
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 116
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/transport/ITransportDataService$Stub;->registerComponentName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 123
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v3, "com.huami.watch.transport.ITransportDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    sget-object v3, Lcom/huami/watch/transport/TransportDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/TransportDataItem;

    .line 131
    .local v0, "_arg0":Lcom/huami/watch/transport/TransportDataItem;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/ITransportDataService$Stub;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":Lcom/huami/watch/transport/TransportDataItem;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huami/watch/transport/TransportDataItem;
    goto :goto_2

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
