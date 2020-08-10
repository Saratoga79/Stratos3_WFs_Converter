.class public Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageFontInfo"
.end annotation


# instance fields
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

.field final synthetic this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->configs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;-><init>(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;CLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->putChar(CLjava/lang/String;)V

    return-void
.end method

.method private putChar(CLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public parseImageFont()Lcom/huami/watch/watchface/widget/ImageFont;
    .locals 6

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->configs:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->fontConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    int-to-char v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseImageFont found char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\' config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WatchFaceConfigTemplate"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    const-string v3, "@assets/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    const/4 v5, 0x2

    :goto_1
    invoke-static {v3, v5, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->access$000(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string v3, "@drawable/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "@wfz/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->this$0:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    const/4 v5, 0x6

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v3, v2, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const-string v1, "  parse done."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$ImageFontInfo;->imageFont:Lcom/huami/watch/watchface/widget/ImageFont;

    :goto_3
    return-object v0
.end method
