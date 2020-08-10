.class public abstract Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;
.super Ljava/lang/Object;


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;

.field protected context:Landroid/content/Context;

.field protected drawable:Landroid/graphics/drawable/Drawable;

.field protected pathInfo:Lcom/huami/watch/watchface/custom/model/PathInfo;

.field protected position:I

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/huami/watch/watchface/custom/model/PathInfo;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/huami/watch/watchface/custom/model/PathInfo;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p4, Lcom/huami/watch/watchface/custom/model/PathInfo;->path:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/huami/watch/watchface/custom/model/PathInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->position:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->view:Landroid/view/View;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->context:Landroid/content/Context;

    iput p3, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->position:I

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->view:Landroid/view/View;

    iput-object p4, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->pathInfo:Lcom/huami/watch/watchface/custom/model/PathInfo;

    iput-object p5, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPathInfo()Lcom/huami/watch/watchface/custom/model/PathInfo;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsCustomViewHolder{context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pathInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->pathInfo:Lcom/huami/watch/watchface/custom/model/PathInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
