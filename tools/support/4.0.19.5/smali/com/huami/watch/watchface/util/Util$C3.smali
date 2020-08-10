.class Lcom/huami/watch/watchface/util/Util$C3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "C3"
.end annotation


# direct methods
.method public static add([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aget p1, p1, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    return-void
.end method

.method private static clamp(I)I
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static diff([I[I)I
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    aget v2, p0, v1

    aget v1, p1, v1

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    aget p1, p1, v1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static initC(I[I)V
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aput v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aput v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x2

    aput p0, p1, v0

    return-void
.end method

.method public static mul([ID[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-double v1, v1

    mul-double v1, v1, p1

    double-to-int v1, v1

    aput v1, p3, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    int-to-double v1, v1

    mul-double v1, v1, p1

    double-to-int v1, v1

    aput v1, p3, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-double v1, p0

    mul-double v1, v1, p1

    double-to-int p0, v1

    aput p0, p3, v0

    return-void
.end method

.method public static sub([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    sub-int/2addr p0, p1

    aput p0, p2, v0

    return-void
.end method

.method public static toRGB([I)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util$C3;->clamp(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util$C3;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p0}, Lcom/huami/watch/watchface/util/Util$C3;->clamp(I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method
