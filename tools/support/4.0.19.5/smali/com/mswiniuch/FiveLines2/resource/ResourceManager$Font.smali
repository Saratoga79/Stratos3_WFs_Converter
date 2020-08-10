.class public final enum Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;
.super Ljava/lang/Enum;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mswiniuch/FiveLines2/resource/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

.field public static final enum CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

.field public static final enum DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

.field public static final enum TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    const-string v1, "CLOCK_FONT"

    const-string v2, "fonts/Digital_LCD.otf"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    new-instance v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    const-string v1, "TEXT_FONT"

    const-string v2, "fonts/Digital_LCD.otf"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    new-instance v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    const-string v1, "DATE_FONT"

    const-string v2, "fonts/Digital_LCD.otf"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    sget-object v1, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->$VALUES:[Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->path:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;
    .locals 1

    .line 14
    const-class v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    return-object p0
.end method

.method public static values()[Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;
    .locals 1

    .line 14
    sget-object v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->$VALUES:[Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-virtual {v0}, [Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    return-object v0
.end method
