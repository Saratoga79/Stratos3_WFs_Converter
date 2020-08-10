.class public Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/util/WatchFaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeHand"
.end annotation


# instance fields
.field mHours:Landroid/graphics/drawable/Drawable;

.field mMinute:Landroid/graphics/drawable/Drawable;

.field mSeconds:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHour()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mHours:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMinute()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mMinute:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSeconds()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->mSeconds:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
