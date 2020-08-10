.class public Lcom/huami/watch/watchface/custom/model/CustomViewHolder;
.super Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/huami/watch/watchface/custom/model/PathInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/huami/watch/watchface/custom/model/PathInfo;)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/model/CustomViewHolder;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPathInfo()Lcom/huami/watch/watchface/custom/model/PathInfo;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/model/CustomViewHolder;->pathInfo:Lcom/huami/watch/watchface/custom/model/PathInfo;

    return-object v0
.end method
