.class public Lcom/ingenic/iwds/os/RemoteBundle;
.super Ljava/lang/Object;
.source "RemoteBundle.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/os/RemoteBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/ingenic/iwds/os/RemoteBundle$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/os/RemoteBundle$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/os/RemoteBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 47
    if-nez v7, :cond_1

    .line 99
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    .line 53
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 58
    iget-object v2, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/ingenic/iwds/os/RemoteBundle;->fromBunble(Landroid/os/Bundle;)Lcom/ingenic/iwds/os/RemoteBundle;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_3
    instance-of v2, v1, [Landroid/os/Parcelable;

    if-eqz v2, :cond_6

    move-object v2, v1

    .line 61
    check-cast v2, [Landroid/os/Parcelable;

    check-cast v2, [Landroid/os/Parcelable;

    .line 63
    array-length v5, v2

    move v4, v6

    .line 64
    :goto_1
    if-ge v4, v5, :cond_9

    .line 65
    aget-object v3, v2, v4

    .line 66
    instance-of v8, v3, Landroid/os/Bundle;

    if-eqz v8, :cond_5

    .line 67
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/ingenic/iwds/os/RemoteBundle;->fromBunble(Landroid/os/Bundle;)Lcom/ingenic/iwds/os/RemoteBundle;

    move-result-object v3

    aput-object v3, v2, v4

    .line 64
    :cond_4
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 68
    :cond_5
    instance-of v8, v3, Landroid/content/Intent;

    if-eqz v8, :cond_4

    .line 69
    check-cast v3, Landroid/content/Intent;

    invoke-static {v3}, Lcom/ingenic/iwds/content/RemoteIntent;->fromIntent(Landroid/content/Intent;)Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_2

    .line 73
    :cond_6
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 74
    if-eqz v1, :cond_9

    move-object v2, v1

    .line 75
    check-cast v2, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 78
    if-lez v8, :cond_9

    .line 79
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 81
    instance-of v3, v4, Landroid/os/Parcelable;

    if-eqz v3, :cond_9

    move v5, v6

    .line 83
    :goto_3
    if-ge v5, v8, :cond_9

    .line 84
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 86
    instance-of v9, v3, Landroid/os/Bundle;

    if-eqz v9, :cond_8

    move-object v3, v4

    .line 87
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/ingenic/iwds/os/RemoteBundle;->fromBunble(Landroid/os/Bundle;)Lcom/ingenic/iwds/os/RemoteBundle;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_7
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    .line 88
    :cond_8
    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_7

    move-object v3, v4

    .line 89
    check-cast v3, Landroid/content/Intent;

    invoke-static {v3}, Lcom/ingenic/iwds/content/RemoteIntent;->fromIntent(Landroid/content/Intent;)Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 96
    :cond_9
    iget-object v2, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    if-lez v0, :cond_0

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    .line 105
    iget-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 107
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ingenic/iwds/os/RemoteBundle;)V
    .locals 2
    .param p1, "in"    # Lcom/ingenic/iwds/os/RemoteBundle;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v0, p1, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    .line 42
    :cond_0
    return-void
.end method

.method public static fromBunble(Landroid/os/Bundle;)Lcom/ingenic/iwds/os/RemoteBundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 146
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/os/RemoteBundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/os/RemoteBundle;-><init>(Lcom/ingenic/iwds/os/RemoteBundle;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_29

    .line 164
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 165
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_2

    .line 169
    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_1

    .line 170
    :cond_2
    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_3

    .line 171
    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_1

    .line 172
    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 173
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 174
    :cond_4
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 175
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 176
    :cond_5
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_6

    .line 177
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 178
    :cond_6
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_7

    .line 179
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 180
    :cond_7
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 181
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 182
    :cond_8
    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_9

    .line 183
    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_1

    .line 184
    :cond_9
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 185
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 186
    :cond_a
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    .line 187
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 188
    :cond_b
    instance-of v2, v1, Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v2, :cond_c

    .line 189
    check-cast v1, Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-virtual {v1}, Lcom/ingenic/iwds/os/RemoteBundle;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 190
    :cond_c
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_d

    .line 191
    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1

    .line 192
    :cond_d
    instance-of v2, v1, [B

    if-eqz v2, :cond_e

    .line 193
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 194
    :cond_e
    instance-of v2, v1, [S

    if-eqz v2, :cond_f

    .line 195
    check-cast v1, [S

    check-cast v1, [S

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_1

    .line 196
    :cond_f
    instance-of v2, v1, [I

    if-eqz v2, :cond_10

    .line 197
    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 198
    :cond_10
    instance-of v2, v1, [J

    if-eqz v2, :cond_11

    .line 199
    check-cast v1, [J

    check-cast v1, [J

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_1

    .line 200
    :cond_11
    instance-of v2, v1, [F

    if-eqz v2, :cond_12

    .line 201
    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 202
    :cond_12
    instance-of v2, v1, [D

    if-eqz v2, :cond_13

    .line 203
    check-cast v1, [D

    check-cast v1, [D

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 204
    :cond_13
    instance-of v2, v1, [Z

    if-eqz v2, :cond_14

    .line 205
    check-cast v1, [Z

    check-cast v1, [Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_1

    .line 206
    :cond_14
    instance-of v2, v1, [C

    if-eqz v2, :cond_15

    .line 207
    check-cast v1, [C

    check-cast v1, [C

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_1

    .line 208
    :cond_15
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 209
    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 210
    :cond_16
    instance-of v2, v1, [Ljava/lang/CharSequence;

    if-eqz v2, :cond_17

    .line 211
    check-cast v1, [Ljava/lang/CharSequence;

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 212
    :cond_17
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 213
    if-eqz v1, :cond_1

    .line 214
    check-cast v1, Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 217
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 219
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_18

    .line 220
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 221
    :cond_18
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 222
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 223
    :cond_19
    instance-of v4, v2, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1a

    .line 224
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 225
    :cond_1a
    instance-of v2, v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v5

    .line 229
    :goto_2
    if-ge v4, v7, :cond_1d

    .line 230
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 232
    instance-of v8, v2, Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v8, :cond_1c

    .line 233
    check-cast v2, Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-virtual {v2}, Lcom/ingenic/iwds/os/RemoteBundle;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1b
    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 234
    :cond_1c
    instance-of v8, v2, Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v8, :cond_1b

    .line 235
    check-cast v2, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v2}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 239
    :cond_1d
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 243
    :cond_1e
    instance-of v2, v1, Landroid/util/SparseArray;

    if-eqz v2, :cond_22

    .line 244
    check-cast v1, Landroid/util/SparseArray;

    .line 246
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v4, v5

    .line 247
    :goto_4
    if-ge v4, v7, :cond_21

    .line 248
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 249
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 251
    instance-of v9, v2, Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v9, :cond_20

    .line 252
    check-cast v2, Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-virtual {v2}, Lcom/ingenic/iwds/os/RemoteBundle;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    :cond_1f
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 253
    :cond_20
    instance-of v9, v2, Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v9, :cond_1f

    .line 254
    check-cast v2, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v2}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 258
    :cond_21
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 259
    :cond_22
    instance-of v2, v1, Landroid/os/Parcelable;

    if-eqz v2, :cond_24

    .line 260
    instance-of v2, v1, Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v2, :cond_23

    .line 261
    check-cast v1, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v1}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 263
    :cond_23
    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 265
    :cond_24
    instance-of v2, v1, Ljava/io/Serializable;

    if-eqz v2, :cond_25

    .line 266
    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_1

    .line 267
    :cond_25
    instance-of v2, v1, [Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 268
    check-cast v1, [Landroid/os/Parcelable;

    check-cast v1, [Landroid/os/Parcelable;

    .line 269
    array-length v7, v1

    move v4, v5

    .line 271
    :goto_6
    if-ge v4, v7, :cond_28

    .line 272
    aget-object v2, v1, v4

    .line 273
    instance-of v8, v2, Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v8, :cond_27

    .line 274
    check-cast v2, Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-virtual {v2}, Lcom/ingenic/iwds/os/RemoteBundle;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v4

    .line 271
    :cond_26
    :goto_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    .line 275
    :cond_27
    instance-of v8, v2, Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v8, :cond_26

    .line 276
    check-cast v2, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v2}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_7

    .line 280
    :cond_28
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_29
    move-object v0, v3

    .line 285
    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/ingenic/iwds/os/RemoteBundle;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
