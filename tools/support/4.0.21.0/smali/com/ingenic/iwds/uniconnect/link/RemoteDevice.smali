.class public abstract Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;
.super Ljava/lang/Object;
.source "RemoteDevice.java"


# static fields
.field public static TYPE_BLUETOOTH_CLASSIC:I

.field public static TYPE_BLUETOOTH_DUAL:I

.field public static TYPE_BLUETOOTH_LE:I

.field public static TYPE_BLUETOOTH_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;->TYPE_BLUETOOTH_CLASSIC:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;->TYPE_BLUETOOTH_DUAL:I

    .line 33
    const/4 v0, 0x2

    sput v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;->TYPE_BLUETOOTH_LE:I

    .line 36
    const/4 v0, 0x3

    sput v0, Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;->TYPE_BLUETOOTH_UNKNOWN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getDeviceType()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
