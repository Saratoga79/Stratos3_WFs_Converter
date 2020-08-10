.class public Lcom/ingenic/iwds/DeviceDescriptor;
.super Ljava/lang/Object;
.source "DeviceDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/DeviceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_CLASS_MOBILE:I = 0x2

.field public static final DEVICE_CLASS_SMARTHOME:I = 0x1

.field public static final DEVICE_CLASS_WEARABLE:I = 0x0

.field public static final MOBILE_DEVICE_SUBCLASS_SMARTPHONE:I = 0x1

.field public static final WEARABLE_DEVICE_SUBCLASS_GLASS:I = 0x2

.field public static final WEARABLE_DEVICE_SUBCLASS_WATCH:I = 0x1

.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public androidApiLevel:I

.field public devAddress:Ljava/lang/String;

.field public devClass:I

.field public devSubClass:I

.field public displayID:Ljava/lang/String;

.field public extraInfo:Ljava/lang/String;

.field public iwdsVersion:I

.field public lcdExterior:Ljava/lang/String;

.field public lcdSize:Ljava/lang/String;

.field public linkTag:Ljava/lang/String;

.field public manufacture:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public serialNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/DeviceDescriptor;->a:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/ingenic/iwds/DeviceDescriptor;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    sget-object v1, Lcom/ingenic/iwds/DeviceDescriptor;->a:Ljava/util/HashMap;

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/ingenic/iwds/DeviceDescriptor;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Lcom/ingenic/iwds/DeviceDescriptor$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/DeviceDescriptor$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/DeviceDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "devicelinkTag"    # Ljava/lang/String;
    .param p3, "deviceClass"    # I
    .param p4, "deviceSubClass"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Device devAddress is null or empty."

    .line 143
    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 147
    sget-object v0, Lcom/ingenic/iwds/DeviceDescriptor;->a:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown device class, class code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 150
    sget-object v0, Lcom/ingenic/iwds/DeviceDescriptor;->a:Ljava/util/HashMap;

    .line 152
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 152
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub device class, subclass code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 156
    const-string v0, "lcd.exterior"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/HardwareList;->getHardwareValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->lcdExterior:Ljava/lang/String;

    .line 157
    const-string v0, "lcd.size"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/HardwareList;->getHardwareValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->lcdSize:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    .line 162
    iput p3, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devClass:I

    .line 163
    iput p4, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devSubClass:I

    .line 165
    sget-object v0, Lcom/ingenic/iwds/BuildOptions;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/ingenic/iwds/BuildOptions;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/ingenic/iwds/BuildOptions;->SERIAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/ingenic/iwds/BuildOptions;->DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->androidApiLevel:I

    .line 171
    const/16 v0, 0x2711

    iput v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->iwdsVersion:I

    .line 172
    return-void

    :cond_1
    move v0, v1

    .line 144
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 147
    goto :goto_1

    :cond_3
    move v2, v1

    .line 152
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    if-ne p0, p1, :cond_1

    .line 314
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 271
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 272
    goto :goto_0

    .line 273
    :cond_2
    instance-of v2, p1, Lcom/ingenic/iwds/DeviceDescriptor;

    if-nez v2, :cond_3

    move v0, v1

    .line 274
    goto :goto_0

    .line 275
    :cond_3
    check-cast p1, Lcom/ingenic/iwds/DeviceDescriptor;

    .line 276
    .end local p1    # "obj":Ljava/lang/Object;
    iget v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->androidApiLevel:I

    iget v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->androidApiLevel:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 277
    goto :goto_0

    .line 278
    :cond_4
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 279
    iget-object v2, p1, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 280
    goto :goto_0

    .line 281
    :cond_5
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 282
    goto :goto_0

    .line 283
    :cond_6
    iget v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devClass:I

    iget v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->devClass:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 284
    goto :goto_0

    .line 285
    :cond_7
    iget v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devSubClass:I

    iget v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->devSubClass:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 286
    goto :goto_0

    .line 287
    :cond_8
    iget v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->iwdsVersion:I

    iget v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->iwdsVersion:I

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 288
    goto :goto_0

    .line 289
    :cond_9
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 290
    iget-object v2, p1, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    .line 291
    goto :goto_0

    .line 292
    :cond_a
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 293
    goto :goto_0

    .line 294
    :cond_b
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 295
    iget-object v2, p1, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 296
    goto :goto_0

    .line 297
    :cond_c
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 298
    goto :goto_0

    .line 299
    :cond_d
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 300
    iget-object v2, p1, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    if-eqz v2, :cond_f

    move v0, v1

    .line 301
    goto :goto_0

    .line 302
    :cond_e
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 303
    goto/16 :goto_0

    .line 304
    :cond_f
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 305
    iget-object v2, p1, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    if-eqz v2, :cond_11

    move v0, v1

    .line 306
    goto/16 :goto_0

    .line 307
    :cond_10
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    .line 308
    goto/16 :goto_0

    .line 309
    :cond_11
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 310
    iget-object v2, p1, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 311
    goto/16 :goto_0

    .line 312
    :cond_12
    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 313
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 248
    .line 250
    iget v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->androidApiLevel:I

    add-int/lit8 v0, v0, 0x1f

    .line 251
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 252
    :goto_0
    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devClass:I

    add-int/2addr v0, v2

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devSubClass:I

    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->iwdsVersion:I

    add-int/2addr v0, v2

    .line 256
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 257
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 258
    :goto_2
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 260
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 261
    :goto_4
    add-int/2addr v0, v2

    .line 262
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 263
    :goto_5
    add-int/2addr v0, v1

    .line 264
    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 262
    :cond_5
    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    .line 263
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceDescriptor [devAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devSubClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devSubClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", androidApiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->androidApiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iwdsVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->iwdsVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/DeviceDescriptor;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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
    .line 181
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->linkTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->devSubClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->manufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->serialNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->displayID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->androidApiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->iwdsVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->lcdExterior:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->lcdSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/ingenic/iwds/DeviceDescriptor;->extraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return-void
.end method
