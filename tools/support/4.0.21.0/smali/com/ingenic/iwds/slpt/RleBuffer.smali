.class public Lcom/ingenic/iwds/slpt/RleBuffer;
.super Ljava/lang/Object;
.source "RleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/RleBuffer$Offset;
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x2710


# instance fields
.field private rleBuf:[I

.field private rleOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    .line 45
    return-void
.end method

.method public static uncompress([II[ILcom/ingenic/iwds/slpt/RleBuffer$Offset;)V
    .locals 6
    .param p0, "dst"    # [I
    .param p1, "dstLength"    # I
    .param p2, "src"    # [I
    .param p3, "offset"    # Lcom/ingenic/iwds/slpt/RleBuffer$Offset;

    .prologue
    .line 56
    iget v3, p3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->src:I

    .line 57
    .local v3, "srcOffset":I
    iget v1, p3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->dst:I

    .line 59
    .local v1, "dstOffset":I
    const/4 v0, 0x0

    .line 61
    .local v0, "count":I
    :cond_0
    array-length v5, p2

    if-ge v3, v5, :cond_1

    .line 62
    aget v4, p2, v3

    .line 63
    .local v4, "val":I
    add-int/lit8 v5, v3, 0x1

    aget v0, p2, v5

    .line 66
    add-int v5, v1, v0

    :try_start_0
    invoke-static {p0, v1, v5, v4}, Ljava/util/Arrays;->fill([IIII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    add-int/lit8 v3, v3, 0x2

    .line 73
    add-int/2addr v1, v0

    .line 74
    if-lt v1, p1, :cond_0

    .line 78
    .end local v4    # "val":I
    :cond_1
    iput v3, p3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->src:I

    .line 79
    iput v1, p3, Lcom/ingenic/iwds/slpt/RleBuffer$Offset;->dst:I

    .line 80
    return-void

    .line 67
    .restart local v4    # "val":I
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public add([III)I
    .locals 6
    .param p1, "mem"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 15
    .local v0, "count":I
    array-length v3, p1

    if-gt v3, p2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 18
    :cond_1
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    array-length v3, v3

    iget v4, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    if-le v3, v4, :cond_0

    .line 21
    move v1, p2

    .local v1, "i":I
    aget v2, p1, p2

    .local v2, "val":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 22
    aget v3, p1, v1

    if-ne v3, v2, :cond_2

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 21
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_2
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    iget v4, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    aput v2, v3, v4

    .line 28
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    iget v4, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    aput v0, v3, v4

    .line 30
    iget v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    iget-object v4, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    array-length v4, v4

    if-lt v3, v4, :cond_4

    .line 37
    :cond_3
    iget v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    iget-object v4, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 38
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    iget v4, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    aput v2, v3, v4

    .line 39
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    iget v4, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    aput v0, v3, v4

    goto :goto_0

    .line 33
    :cond_4
    aget v2, p1, v1

    .line 34
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    .line 99
    return-void
.end method

.method public getBuffer()[I
    .locals 4

    .prologue
    .line 85
    iget v1, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    if-nez v1, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 92
    .local v0, "buf":[I
    :goto_0
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/RleBuffer;->clear()V

    .line 94
    return-object v0

    .line 87
    .end local v0    # "buf":[I
    :cond_0
    iget v1, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 88
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    .restart local v0    # "buf":[I
    goto :goto_0

    .line 90
    .end local v0    # "buf":[I
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleBuf:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    .restart local v0    # "buf":[I
    goto :goto_0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/ingenic/iwds/slpt/RleBuffer;->rleOffset:I

    return v0
.end method
