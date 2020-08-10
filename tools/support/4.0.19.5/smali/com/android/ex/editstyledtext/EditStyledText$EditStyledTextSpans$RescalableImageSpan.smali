.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;
.super Landroid/text/style/ImageSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescalableImageSpan"
.end annotation


# instance fields
.field private final MAXWIDTH:I

.field mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field public mIntrinsicHeight:I

.field public mIntrinsicWidth:I


# direct methods
.method private rescaleBigImage(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const-string v0, "EditStyledTextSpan"

    const-string v1, "--- rescaleBigImage:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const-string v2, "EditStyledTextSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- rescaleBigImage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    mul-int v1, v1, v2

    div-int/2addr v1, v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicWidth:I

    iput v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicHeight:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    const/4 v7, 0x0

    if-le v5, v6, :cond_1

    iget v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    mul-int v5, v5, v4

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v4, v5, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "EditStyledTextSpan"

    const-string v2, "OutOfMemoryError"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "EditStyledTextSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to loaded content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_2
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->rescaleBigImage(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicHeight:I

    goto/16 :goto_0

    return-object v1
.end method
