.class public Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;
.super Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;
.source "AndroidBtDevice.java"


# instance fields
.field private a:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 87
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 73
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    check-cast p1, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;

    .line 80
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_4

    .line 81
    iget-object v2, p1, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p1, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->TYPE_BLUETOOTH_CLASSIC:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    .line 59
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 60
    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBtDevice [Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MAC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
