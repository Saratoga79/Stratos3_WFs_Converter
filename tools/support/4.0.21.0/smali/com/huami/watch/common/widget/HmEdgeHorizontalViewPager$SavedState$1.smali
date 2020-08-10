.class final Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<",
        "Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;
    .locals 1

    new-instance v0, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState$1;->newArray(I)[Lcom/huami/watch/common/widget/HmEdgeHorizontalViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
