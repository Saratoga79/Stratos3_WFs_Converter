.class public Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "VibrateServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;
    }
.end annotation


# static fields
.field public static final VIBRATE_1000MS_ALERT:I = 0x10

.field public static final VIBRATE_750MS_ALERT:I = 0xf

.field public static final VIBRATE_BUZZ_1:I = 0x2f

.field public static final VIBRATE_BUZZ_2:I = 0x30

.field public static final VIBRATE_BUZZ_3:I = 0x31

.field public static final VIBRATE_BUZZ_4:I = 0x32

.field public static final VIBRATE_BUZZ_5:I = 0x33

.field public static final VIBRATE_DELAY:I = 0x0

.field public static final VIBRATE_DOUBLE_CLICK1:I = 0xa

.field public static final VIBRATE_DOUBLE_CLICK2:I = 0xb

.field public static final VIBRATE_LONG_BUZZ_STOPPING:I = 0x76

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_MEDIUM_1:I = 0x29

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_MEDIUM_2:I = 0x2a

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_MEDIUM_3:I = 0x2b

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_STRONG_1:I = 0x25

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_STRONG_2:I = 0x26

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_STRONG_3:I = 0x27

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_STRONG_4:I = 0x28

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_TICK_1:I = 0x2c

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_TICK_2:I = 0x2d

.field public static final VIBRATE_LONG_DOUBLE_SHARP_CLICK_TICK_3:I = 0x2e

.field public static final VIBRATE_MEDIUM_CLICK_1:I = 0x15

.field public static final VIBRATE_MEDIUM_CLICK_2:I = 0x16

.field public static final VIBRATE_MEDIUM_CLICK_3:I = 0x17

.field public static final VIBRATE_PULSING_MEDIUM_1:I = 0x36

.field public static final VIBRATE_PULSING_MEDIUM_2:I = 0x37

.field public static final VIBRATE_PULSING_SHARP_1:I = 0x38

.field public static final VIBRATE_PULSING_SHARP_2:I = 0x39

.field public static final VIBRATE_PULSING_STRONG_1:I = 0x34

.field public static final VIBRATE_PULSING_STRONG_2:I = 0x35

.field public static final VIBRATE_SHARP_CLICK1:I = 0x4

.field public static final VIBRATE_SHARP_CLICK2:I = 0x5

.field public static final VIBRATE_SHARP_CLICK3:I = 0x6

.field public static final VIBRATE_SHARP_TICK_1:I = 0x18

.field public static final VIBRATE_SHARP_TICK_2:I = 0x19

.field public static final VIBRATE_SHARP_TICK_3:I = 0x1a

.field public static final VIBRATE_SHORT_DOUBLE_CLICK_MEDIUM_1:I = 0x1f

.field public static final VIBRATE_SHORT_DOUBLE_CLICK_MEDIUM_2:I = 0x20

.field public static final VIBRATE_SHORT_DOUBLE_CLICK_MEDIUM_3:I = 0x21

.field public static final VIBRATE_SHORT_DOUBLE_CLICK_STRONG_1:I = 0x1b

.field public static final VIBRATE_SHORT_DOUBLE_CLICK_STRONG_2:I = 0x1c

.field public static final VIBRATE_SHORT_DOUBLE_CLICK_STRONG_3:I = 0x1d

.field public static final VIBRATE_SHORT_DOUBLE_CLICK_STRONG_4:I = 0x1e

.field public static final VIBRATE_SHORT_DOUBLE_SHARP_TICK_1:I = 0x22

.field public static final VIBRATE_SHORT_DOUBLE_SHARP_TICK_2:I = 0x23

.field public static final VIBRATE_SHORT_DOUBLE_SHARP_TICK_3:I = 0x24

.field public static final VIBRATE_SMOOTH_HUM_1:I = 0x77

.field public static final VIBRATE_SMOOTH_HUM_2:I = 0x78

.field public static final VIBRATE_SMOOTH_HUM_3:I = 0x79

.field public static final VIBRATE_SMOOTH_HUM_4:I = 0x7a

.field public static final VIBRATE_SMOOTH_HUM_5:I = 0x7b

.field public static final VIBRATE_SOFT_BUMP1:I = 0x7

.field public static final VIBRATE_SOFT_BUMP2:I = 0x8

.field public static final VIBRATE_SOFT_BUMP3:I = 0x9

.field public static final VIBRATE_SOFT_FUZZ:I = 0xd

.field public static final VIBRATE_STRONG_CLICK1:I = 0x1

.field public static final VIBRATE_STRONG_CLICK2:I = 0x2

.field public static final VIBRATE_STRONG_CLICK3:I = 0x3

.field public static final VIBRATE_STRONG_CLICK_1:I = 0x11

.field public static final VIBRATE_STRONG_CLICK_2:I = 0x12

.field public static final VIBRATE_STRONG_CLICK_3:I = 0x13

.field public static final VIBRATE_STRONG_CLICK_4:I = 0x14

.field public static final VIBRATE_STRONG_FUZZ:I = 0xe

.field public static final VIBRATE_TRANSITION_CLICK_1:I = 0x3a

.field public static final VIBRATE_TRANSITION_CLICK_2:I = 0x3b

.field public static final VIBRATE_TRANSITION_CLICK_3:I = 0x3c

.field public static final VIBRATE_TRANSITION_CLICK_4:I = 0x3d

.field public static final VIBRATE_TRANSITION_CLICK_5:I = 0x3e

.field public static final VIBRATE_TRANSITION_CLICK_6:I = 0x3f

.field public static final VIBRATE_TRANSITION_HUM_1:I = 0x40

.field public static final VIBRATE_TRANSITION_HUM_2:I = 0x41

.field public static final VIBRATE_TRANSITION_HUM_3:I = 0x42

.field public static final VIBRATE_TRANSITION_HUM_4:I = 0x43

.field public static final VIBRATE_TRANSITION_HUM_5:I = 0x44

.field public static final VIBRATE_TRANSITION_HUM_6:I = 0x45

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SHARP_1:I = 0x4c

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SHARP_1_HALF:I = 0x64

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SHARP_2:I = 0x4d

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SHARP_2_HALF:I = 0x65

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SMOOTH_1:I = 0x46

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SMOOTH_1_HALF:I = 0x5e

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SMOOTH_2:I = 0x47

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_LONG_SMOOTH_2_HALF:I = 0x5f

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SHARP_1:I = 0x4e

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SHARP_1_HALF:I = 0x66

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SHARP_2:I = 0x4f

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SHARP_2_HALF:I = 0x67

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SMOOTH_1:I = 0x48

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SMOOTH_1_HALF:I = 0x60

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SMOOTH_2:I = 0x49

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_MEDIUM_SMOOTH_2_HALF:I = 0x61

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SHARP_1:I = 0x50

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SHARP_1_HALF:I = 0x68

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SHARP_2:I = 0x51

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SHARP_2_HALF:I = 0x69

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SMOOTH_1:I = 0x4a

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SMOOTH_1_HALF:I = 0x62

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SMOOTH_2:I = 0x4b

.field public static final VIBRATE_TRANSITION_RAMP_DOWN_SHORT_SMOOTH_2_HALF:I = 0x63

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SHARP_1:I = 0x58

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SHARP_1_HALF:I = 0x70

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SHARP_2:I = 0x59

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SHARP_2_HALF:I = 0x71

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SMOOTH_1:I = 0x52

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SMOOTH_1_HALF:I = 0x6a

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SMOOTH_2:I = 0x53

.field public static final VIBRATE_TRANSITION_RAMP_UP_LONG_SMOOTH_2_HALF:I = 0x6b

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SHARP_1:I = 0x5a

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SHARP_1_HALF:I = 0x72

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SHARP_2:I = 0x5b

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SHARP_2_HALF:I = 0x73

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SMOOTH_1:I = 0x54

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SMOOTH_1_HALF:I = 0x6c

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SMOOTH_2:I = 0x55

.field public static final VIBRATE_TRANSITION_RAMP_UP_MEDIUM_SMOOTH_2_HALF:I = 0x6d

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SHARP_1:I = 0x5c

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SHARP_1_HALF:I = 0x74

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SHARP_2:I = 0x5d

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SHARP_2_HALF:I = 0x75

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SMOOTH_1:I = 0x56

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SMOOTH_1_HALF:I = 0x6e

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SMOOTH_2:I = 0x57

.field public static final VIBRATE_TRANSITION_RAMP_UP_SHORT_SMOOTH_2_HALF:I = 0x6f

.field public static final VIBRATE_TRIPLE_CLICK:I = 0xc


# instance fields
.field private final a:Landroid/os/Vibrator;

.field private b:Lcom/ingenic/iwds/smartvibrate/IVibrateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 279
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->a:Landroid/os/Vibrator;

    .line 281
    new-instance v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$1;-><init>(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 296
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;)Lcom/ingenic/iwds/smartvibrate/IVibrateService;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->b:Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    return-object v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;Lcom/ingenic/iwds/smartvibrate/IVibrateService;)Lcom/ingenic/iwds/smartvibrate/IVibrateService;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->b:Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    return-object p1
.end method


# virtual methods
.method public GetCustomModes(I)Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;
    .locals 7
    .param p1, "number"    # I

    .prologue
    const/16 v6, 0x4c

    const/16 v2, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;-><init>(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;)V

    .line 174
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v2, v1, v3

    .line 179
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v2, v1, v4

    .line 180
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v2, v1, v5

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v6, v1, v3

    .line 185
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v6, v1, v4

    .line 186
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v6, v1, v5

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    const/16 v2, 0x40

    aput v2, v1, v3

    .line 191
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v3, v1, v4

    .line 192
    iget-object v1, v0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aput v3, v1, v5

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public GetVibrateModes([II)Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;
    .locals 4
    .param p1, "effect"    # [I
    .param p2, "len"    # I

    .prologue
    .line 164
    new-instance v1, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;

    invoke-direct {v1, p0}, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;-><init>(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;)V

    .line 165
    new-array v0, p2, [I

    iput-object v0, v1, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    .line 166
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 167
    iget-object v2, v1, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v1
.end method

.method public SpecialVibrate(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;)V
    .locals 3
    .param p1, "vm"    # Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->b:Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    iget-object v1, p1, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->effect:[I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/smartvibrate/IVibrateService;->Drv2605Vibrate([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in vibrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 270
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    return v0
.end method

.method public vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 222
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->a:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 223
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->a:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 242
    return-void
.end method
