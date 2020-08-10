.class public final enum Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

.field public static final enum DOWN:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

.field public static final enum UP:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->UP:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    new-instance v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    const-string v1, "DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->DOWN:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    sget-object v1, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->UP:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->DOWN:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->$VALUES:[Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;
    .locals 1

    const-class v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->$VALUES:[Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    invoke-virtual {v0}, [Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    return-object v0
.end method
