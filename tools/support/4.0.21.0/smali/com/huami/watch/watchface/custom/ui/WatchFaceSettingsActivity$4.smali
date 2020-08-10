.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(I)V
    .locals 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1700(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1800(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v3, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->hasTimeDigital()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v0, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->hasDataWidget()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(II)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1300(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v3, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->hasTimeHander()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v0, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1200(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v3, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->hasGraduation()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v0, v4}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_4
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->isShowFirstTips()Z

    move-result p1

    const v1, 0x7f0c0032

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/presenter/DataManager;->hideFirstTips()V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {p1, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {p1, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$900(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$1900(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$2000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
