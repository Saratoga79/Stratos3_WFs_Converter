.class synthetic Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$huami$watch$watchface$custom$ui$WatchFaceCustomFragment$CustomState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->values()[Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$3;->$SwitchMap$com$huami$watch$watchface$custom$ui$WatchFaceCustomFragment$CustomState:[I

    :try_start_0
    sget-object v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$3;->$SwitchMap$com$huami$watch$watchface$custom$ui$WatchFaceCustomFragment$CustomState:[I

    sget-object v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->NORMAL:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$3;->$SwitchMap$com$huami$watch$watchface$custom$ui$WatchFaceCustomFragment$CustomState:[I

    sget-object v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->EDIT:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
