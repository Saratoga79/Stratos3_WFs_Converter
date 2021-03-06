.class public Lcom/ingenic/iwds/smartsense/SensorEvent;
.super Ljava/lang/Object;
.source "SensorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_HEART_RATE_AVALIABLE:I = 0x2

.field public static final ACCURACY_HEART_RATE_UNAVALIABLE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/smartsense/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_WAKE_UP:I = 0x1

.field public static final GESTURE_LET_HAND_DOWN_AFTER_LOOK:I = 0x3

.field public static final GESTURE_RAISE_HAND_AND_LOOK:I = 0x2

.field public static final GESTURE_SHAKE_HAND:I = 0x1

.field public static final GESTURE_TURN_WRIST:I = 0x4

.field public static final MOTION_DEEP_SLEEP:I = 0x7

.field public static final MOTION_FALL:I = 0x40

.field public static final MOTION_MAX:I = 0x5

.field public static final MOTION_RESET:I = 0x0

.field public static final MOTION_RUN:I = 0x3

.field public static final MOTION_SLEEP:I = 0x6

.field public static final MOTION_STOP:I = 0x1

.field public static final MOTION_VEHICLE:I = 0x4

.field public static final MOTION_WALK:I = 0x2


# instance fields
.field public accuracy:I

.field public sensorType:I

.field public final values:[F

.field private final valuesSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/ingenic/iwds/smartsense/SensorEvent$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/SensorEvent$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/smartsense/SensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "valSize"    # I

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p1, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->valuesSize:I

    .line 240
    iget v0, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->valuesSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->values:[F

    .line 241
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 256
    iget v0, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->valuesSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->valuesSize:I

    if-ge v0, v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->values:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget v0, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->accuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/ingenic/iwds/smartsense/SensorEvent;->sensorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    return-void
.end method
