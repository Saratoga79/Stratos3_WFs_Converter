.class public abstract Lcom/ingenic/iwds/uniconnect/IConnection$Stub;
.super Landroid/os/Binder;
.source "IConnection.java"

# interfaces
.implements Lcom/ingenic/iwds/uniconnect/IConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/IConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/IConnection$Stub$a;
    }
.end annotation


# static fields
.field protected static final PackageHeaderSize:I = 0xa


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->a:[B

    .line 38
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/uniconnect/IConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/uniconnect/IConnection;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/ingenic/iwds/uniconnect/IConnection;

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/uniconnect/IConnection$Stub$a;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public allocReadBuffer(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 42
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->a:[B

    .line 43
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 62
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 68
    sparse-switch p1, :sswitch_data_0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 70
    :sswitch_0
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 72
    goto :goto_0

    .line 76
    :sswitch_1
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->open(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v1

    .line 91
    goto :goto_0

    .line 95
    :sswitch_2
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->close()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 101
    goto :goto_0

    .line 105
    :sswitch_3
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 108
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->write([BII)I

    move-result v0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 113
    goto :goto_0

    .line 117
    :sswitch_4
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    if-gez v2, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 127
    :goto_1
    invoke-virtual {p0, v0, v3, v2}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->read([BII)I

    move-result v2

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    if-ltz v2, :cond_0

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->a:[B

    goto :goto_1

    .line 139
    :sswitch_5
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->available()I

    move-result v0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 146
    goto :goto_0

    .line 150
    :sswitch_6
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->handshake()I

    move-result v0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 161
    :sswitch_7
    const-string v0, "com.ingenic.iwds.uniconnect.IConnection"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->getMaxPayloadSize()I

    move-result v0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 168
    goto/16 :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
