.class final Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;)I
    .locals 0

    iget p1, p1, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;->position:I

    iget p2, p2, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;

    check-cast p2, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$1;->compare(Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
