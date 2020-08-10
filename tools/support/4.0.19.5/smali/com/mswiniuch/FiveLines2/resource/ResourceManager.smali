.class public Lcom/mswiniuch/FiveLines2/resource/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;
    }
.end annotation


# static fields
.field private static TYPE_FACES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->TYPE_FACES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;
    .locals 1

    .line 29
    sget-object v0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->TYPE_FACES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p1}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->access$000(Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 32
    sget-object p0, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->TYPE_FACES:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
