.class public Lcom/huami/watch/watchface/util/Util;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/util/Util$C3;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final IS_OVERSEA:Z

.field private static final LOCALE_DEFAULT:Ljava/util/Locale;

.field public static final mLock:Ljava/lang/Object;

.field private static palette:[[I

.field public static sHasWatchFaceStarted:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huami/watch/watchface/util/Util;->mLock:Ljava/lang/Object;

    const/4 v0, 0x2

    const-string v1, "watchface"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/huami/watch/watchface/util/Util;->DEBUG:Z

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v1, Lcom/huami/watch/watchface/util/Util;->LOCALE_DEFAULT:Ljava/util/Locale;

    const-string v1, "ro.build.oversea"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/huami/watch/watchface/util/Util;->IS_OVERSEA:Z

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    const/16 v4, 0x8

    new-array v4, v4, [[I

    new-array v5, v1, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v1, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-array v5, v1, [I

    fill-array-data v5, :array_4

    aput-object v5, v4, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    aput-object v0, v4, v1

    const/4 v0, 0x4

    aput-object v2, v4, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    const/4 v2, 0x5

    aput-object v0, v4, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x6

    aput-object v0, v4, v1

    const/4 v0, 0x7

    aput-object v3, v4, v0

    sput-object v4, Lcom/huami/watch/watchface/util/Util;->palette:[[I

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_4
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_6
    .array-data 4
        0xff
        0x0
        0xff
    .end array-data

    :array_7
    .array-data 4
        0xff
        0xff
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static acquireWakeLock(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public static assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkWatchFace(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static checkWatchFaceLocked(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static chinaToUnicode(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "u00"

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "u"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static cleanSportItemOrder()V
    .locals 2

    const-string v0, "sys.watchface.sport.order"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final convertKmToMi(D)D
    .locals 2

    const-wide v0, 0x3fe3e245dad5a40cL    # 0.6213712

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x1400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method private static createDitherBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 18

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-gtz v1, :cond_7

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float v1, v1, p2

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v3, v3, p2

    div-float v12, v3, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, p2

    div-float v13, v3, v2

    mul-float v0, v0, p2

    div-float/2addr v0, v2

    mul-int v2, v10, v11

    new-array v14, v2, [I

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v15, 0x0

    aput v2, v4, v15

    const/4 v9, 0x3

    const/16 v16, 0x1

    aput v9, v4, v16

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v14

    move v5, v10

    move-object v15, v8

    move v8, v10

    move/from16 v17, v0

    const/4 v0, 0x3

    move v9, v11

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v14

    if-ge v2, v3, :cond_0

    new-array v3, v0, [I

    aget v4, v14, v2

    invoke-static {v4, v3}, Lcom/huami/watch/watchface/util/Util$C3;->initC(I[I)V

    aput-object v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    const/4 v2, 0x0

    :goto_1
    array-length v3, v15

    if-ge v2, v3, :cond_5

    aget-object v3, v15, v2

    invoke-static {v3, v0}, Lcom/huami/watch/watchface/util/Util;->findClosestPaletteColor([I[I)V

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util$C3;->toRGB([I)I

    move-result v4

    aput v4, v14, v2

    invoke-static {v3, v0, v0}, Lcom/huami/watch/watchface/util/Util$C3;->sub([I[I[I)V

    rem-int v4, v2, v10

    div-int v5, v2, v10

    add-int/lit8 v6, v4, 0x1

    if-ge v6, v10, :cond_1

    float-to-double v7, v1

    invoke-static {v0, v7, v8, v3}, Lcom/huami/watch/watchface/util/Util$C3;->mul([ID[I)V

    add-int/lit8 v7, v2, 0x1

    aget-object v7, v15, v7

    invoke-static {v7, v3}, Lcom/huami/watch/watchface/util/Util$C3;->add([I[I)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_2

    float-to-double v7, v12

    invoke-static {v0, v7, v8, v3}, Lcom/huami/watch/watchface/util/Util$C3;->mul([ID[I)V

    add-int v4, v2, v10

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v15, v4

    invoke-static {v4, v3}, Lcom/huami/watch/watchface/util/Util$C3;->add([I[I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v11, :cond_3

    float-to-double v7, v13

    invoke-static {v0, v7, v8, v3}, Lcom/huami/watch/watchface/util/Util$C3;->mul([ID[I)V

    add-int v4, v2, v10

    aget-object v4, v15, v4

    invoke-static {v4, v3}, Lcom/huami/watch/watchface/util/Util$C3;->add([I[I)V

    :cond_3
    if-ge v6, v10, :cond_4

    if-ge v5, v11, :cond_4

    move/from16 v4, v17

    float-to-double v5, v4

    invoke-static {v0, v5, v6, v3}, Lcom/huami/watch/watchface/util/Util$C3;->mul([ID[I)V

    add-int v5, v2, v10

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v15, v5

    invoke-static {v5, v3}, Lcom/huami/watch/watchface/util/Util$C3;->add([I[I)V

    goto :goto_2

    :cond_4
    move/from16 v4, v17

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move/from16 v17, v4

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    move v4, v10

    move v7, v10

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input must be in (0, 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public static ditherBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/huami/watch/watchface/util/Util;->createDitherBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method private static findClosestPaletteColor([I[I)V
    .locals 8

    sget-object v0, Lcom/huami/watch/watchface/util/Util;->palette:[[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    array-length v3, v0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    invoke-static {v5, p0}, Lcom/huami/watch/watchface/util/Util$C3;->diff([I[I)I

    move-result v6

    invoke-static {v4, p0}, Lcom/huami/watch/watchface/util/Util$C3;->diff([I[I)I

    move-result v7

    if-ge v6, v7, :cond_0

    move-object v4, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    invoke-static {v4, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method

.method public static final formatDate(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    :goto_1
    add-int v5, v2, v4

    if-ge v5, v1, :cond_0

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x4d

    if-eq v3, v6, :cond_3

    const/16 v6, 0x64

    if-eq v3, v6, :cond_2

    const/16 v6, 0x79

    if-eq v3, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-static {p3}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v0, v2, v5, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    :cond_4
    add-int/2addr v2, v4

    goto :goto_0

    :cond_5
    instance-of p0, p0, Landroid/text/Spanned;

    if-eqz p0, :cond_6

    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static final formatTime(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getCharView(Landroid/content/Context;Ljava/lang/String;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    invoke-static {p0, p1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {p1, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object p1
.end method

.method public static getCurrentSlpt(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "slptName"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultNumView(Landroid/content/Context;Ljava/lang/String;)Lcom/ingenic/iwds/slpt/view/core/SlptNumView;
    .locals 1

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->num:I

    return-object p0
.end method

.method public static final getDistance(IF)F
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x3f1f122f

    mul-float p1, p1, p0

    :goto_0
    return p1
.end method

.method public static getFormatDistance(D)Ljava/lang/String;
    .locals 4

    const-string v0, "--"

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_2

    const/4 p0, 0x2

    const/4 p1, 0x3

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-wide v1, 0x408f400000000000L    # 1000.0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_3

    const/4 p0, 0x1

    sget-object p1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static final getMeasurement(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "measurement"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSlptRuningMode()I
    .locals 2

    const-string v0, "sys.kernel.slpt.watchmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSportItemOrder()Ljava/lang/String;
    .locals 2

    const-string v0, "sys.watchface.sport.order"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSportfaceValue()I
    .locals 2

    const-string v0, "sys.watchface.sport"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getWeekNumberZh(I)C
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x20

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x516d

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x4e94

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x56db

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x4e09

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x4e8c

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x4e00

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x65e5

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hideWatchFace(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static final isSlptSupportColor(I)Z
    .locals 1

    shr-int/lit8 v0, p0, 0x20

    and-int/lit16 v0, v0, 0xff

    rem-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    rem-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    rem-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    and-int/lit16 p0, p0, 0xff

    rem-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lockWatchFace(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static needEnAssets()Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "ro.build.oversea"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user.language"

    const-string v3, "en"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final needSlptRefreshSecond(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "slpt_refresh_in_sec"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static needSwimYardUnit(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "0"

    const-string v0, "sys.watchface.android.unit"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static needVirtualRabbit(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "sys.sport.android.rabbit_enable"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static notifyStatusBarPositionUpdated(Landroid/content/Context;F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0, p1}, Lcom/huami/watch/watchface/util/Util;->notifyStatusBarPositionUpdated(Landroid/content/Context;FF)V

    return-void
.end method

.method public static notifyStatusBarPositionUpdated(Landroid/content/Context;FF)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify StatusBar Position Updated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DDDD"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huami.watch.watchface.action.STATUSBAR_POSITION_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "com.huami.watch.watchface.extra.STATUSBAR_POSITION_X"

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_0

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_0
    const-string v4, "com.huami.watch.watchface.extra.STATUSBAR_POSITION_Y"

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/high16 v0, -0x40800000    # -1.0f

    if-ltz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, p2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :goto_1
    return-void
.end method

.method public static setCurrentSlpt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "slptName"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setSlptRuningMode(I)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sys.kernel.slpt.watchmode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSportItemOrder(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sys.watchface.sport.order"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showWatchFace(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static slptCheckHeightAndWidth([BII)[B
    .locals 9

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, p2, :cond_1

    if-eq v6, p1, :cond_4

    :cond_1
    int-to-float p0, p2

    int-to-float p2, v5

    div-float/2addr p0, p2

    int-to-float p1, p1

    int-to-float p2, v6

    div-float/2addr p1, p2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, p0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p2, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object p0, p1

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static unlockWatchFace(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
