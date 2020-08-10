.class Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/common/widget/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/common/widget/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/huami/watch/common/widget/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/common/widget/VerticalViewPager;Lcom/huami/watch/common/widget/VerticalViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;-><init>(Lcom/huami/watch/common/widget/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->dataSetChanged()V

    return-void
.end method
