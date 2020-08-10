.class public interface abstract Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;
    }
.end annotation


# virtual methods
.method public abstract onBackgroundChanged(Landroid/graphics/drawable/Drawable;ZI)V
.end method

.method public abstract onScrollDirectionChange(Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;)V
.end method
