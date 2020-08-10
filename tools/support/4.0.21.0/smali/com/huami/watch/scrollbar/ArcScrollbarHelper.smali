.class public Lcom/huami/watch/scrollbar/ArcScrollbarHelper;
.super Ljava/lang/Object;


# static fields
.field public static final DEGBU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/huami/watch/utils/Gloable;->DEBUG:Z

    sput-boolean v0, Lcom/huami/watch/scrollbar/ArcScrollbarHelper;->DEGBU:Z

    return-void
.end method

.method public static setArcScrollBarDrawable(Landroid/view/View;)Z
    .locals 7

    sget-boolean v0, Lcom/huami/watch/scrollbar/ArcScrollbarHelper;->DEGBU:Z

    if-eqz v0, :cond_0

    const-string v0, "ArcHelper"

    const-string v1, "ArcHelper setScrollBarDrawable begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v2, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;

    invoke-direct {v2, p0}, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.view.View"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    move v4, v0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_5

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mScrollCache"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v3, v3, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_8

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    move v4, v0

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_8

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "scrollBar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    aget-object v3, v3, v4

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-boolean p0, Lcom/huami/watch/scrollbar/ArcScrollbarHelper;->DEGBU:Z

    if-eqz p0, :cond_6

    const-string p0, "ArcHelper"

    const-string v2, "ArcHelper setScrollBarDrawable end "

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v0, v1

    return v0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_8
    return v0
.end method
