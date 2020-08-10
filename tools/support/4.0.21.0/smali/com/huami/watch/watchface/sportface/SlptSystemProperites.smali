.class public Lcom/huami/watch/watchface/sportface/SlptSystemProperites;
.super Ljava/lang/Object;


# static fields
.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mGetIntMethod:Ljava/lang/reflect/Method;

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 4

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->init()V

    :try_start_0
    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mGetIntMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mClassType:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move p0, p1

    return p0
.end method

.method public static getSportfaceValue()I
    .locals 2

    const-string v0, "sys.watchface.sport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static init()V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mClassType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mClassType:Ljava/lang/Class;

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mClassType:Ljava/lang/Class;

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mGetMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mClassType:Ljava/lang/Class;

    const-string v1, "getInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->mGetIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
