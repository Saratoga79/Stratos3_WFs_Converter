.class public Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageFontInfo"
.end annotation


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private configs:Ljava/lang/String;

.field private fontConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->configs:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;Ljava/lang/String;Lcom/huami/watch/watchface/util/WatchFaceConfig$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfig;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;CLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->putChar(CLjava/lang/String;)V

    return-void
.end method

.method private bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private putChar(CLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public parseCharData(C)[B
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, "@assets/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "@assets/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const-string p1, "8c/"

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-static {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->access$000(Lcom/huami/watch/watchface/util/WatchFaceConfig;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "@wfz/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "@wfz/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const-string v3, "8c/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-static {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->access$100(Lcom/huami/watch/watchface/util/WatchFaceConfig;)Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-static {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->access$100(Lcom/huami/watch/watchface/util/WatchFaceConfig;)Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->exists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {p1, v3, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-static {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->access$100(Lcom/huami/watch/watchface/util/WatchFaceConfig;)Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/loader/WatchFaceExternalLoader;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {p1, v3, v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "WatchFaceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCharData failure. No file found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "WatchFaceConfig"

    const-string v0, "parseCharData failure. ExternalLoader not init."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public parseCharData(CI)[B
    .locals 4

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->parseCharData(C)[B

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcom/huami/watch/watchface/util/Util;->isSlptSupportColor(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const v0, 0x3f333333    # 0.7f

    invoke-static {p1, p2, v0}, Lcom/huami/watch/watchface/util/Util;->ditherBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    invoke-direct {p0, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public parseImageFont()Lcom/huami/watch/watchface/widget/ImageFont;
    .locals 6

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    return-object v0

    :cond_1
    new-instance v0, Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->configs:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    int-to-char v2, v2

    const-string v3, "WatchFaceConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseImageFont found char \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\' config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    const-string v3, "@assets/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "@assets/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    const/4 v4, 0x2

    :goto_1
    invoke-static {v3, v4, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->access$200(Lcom/huami/watch/watchface/util/WatchFaceConfig;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v3, "@drawable/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "@drawable/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "@wfz/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "@wfz/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    const/4 v4, 0x6

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v3, v2, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const-string v1, "WatchFaceConfig"

    const-string v2, "  parse done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    return-object v0
.end method
