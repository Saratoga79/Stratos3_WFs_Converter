.class public final enum Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/indicator/ViewPagerPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

.field public static final enum BOTTOM:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

.field public static final enum LET:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

.field public static final enum RIGHT:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

.field public static final enum TOP:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;


# instance fields
.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const-string v1, "LET"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->LET:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    new-instance v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const-string v1, "TOP"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->TOP:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    new-instance v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const-string v1, "RIGHT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v4}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->RIGHT:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    new-instance v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v2, v5}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->BOTTOM:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    sget-object v1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->LET:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->TOP:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->RIGHT:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->BOTTOM:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->$VALUES:[Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;)I
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->getIndex()I

    move-result p0

    return p0
.end method

.method private getIndex()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->mIndex:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;
    .locals 1

    const-class v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;
    .locals 1

    sget-object v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->$VALUES:[Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    invoke-virtual {v0}, [Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    return-object v0
.end method
