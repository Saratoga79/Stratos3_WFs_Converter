.class public Lcom/ingenic/iwds/smartsense/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMART_SENSE_TYPE_BASE:I = 0x64

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_GESTURE:I = 0x67

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_MOTION:I = 0x68

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_UV:I = 0x66

.field public static final TYPE_VOICE_TRIGGER:I = 0x69


# instance fields
.field private m_maxRange:F

.field private m_minDelay:I

.field private m_resolution:F

.field private m_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/ingenic/iwds/smartsense/Sensor$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/Sensor$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/smartsense/Sensor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/ingenic/iwds/smartsense/Sensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_type:I

    return p1
.end method

.method static synthetic access$102(Lcom/ingenic/iwds/smartsense/Sensor;F)F
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_maxRange:F

    return p1
.end method

.method static synthetic access$202(Lcom/ingenic/iwds/smartsense/Sensor;F)F
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_resolution:F

    return p1
.end method

.method static synthetic access$302(Lcom/ingenic/iwds/smartsense/Sensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_minDelay:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_maxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_minDelay:I

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_resolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_maxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_resolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_minDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 164
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_maxRange:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 166
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_resolution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 167
    iget v0, p0, Lcom/ingenic/iwds/smartsense/Sensor;->m_minDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
