.class Lcom/huami/watch/common/widget/VerticalViewPager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/common/widget/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/common/widget/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/huami/watch/common/widget/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$3;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager$3;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$000(Lcom/huami/watch/common/widget/VerticalViewPager;I)V

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager$3;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate()V

    return-void
.end method
