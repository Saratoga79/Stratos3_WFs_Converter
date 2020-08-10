.class Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/indicator/ViewPagerPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;


# direct methods
.method private constructor <init>(Lcom/huami/watch/indicator/ViewPagerPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;->this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/indicator/ViewPagerPageIndicator;Lcom/huami/watch/indicator/ViewPagerPageIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;-><init>(Lcom/huami/watch/indicator/ViewPagerPageIndicator;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;->this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    invoke-virtual {v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;->this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    invoke-virtual {v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dataSetChanged()V

    return-void
.end method
