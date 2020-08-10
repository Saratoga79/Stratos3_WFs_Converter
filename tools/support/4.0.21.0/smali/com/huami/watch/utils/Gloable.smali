.class public Lcom/huami/watch/utils/Gloable;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UI_LIB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/utils/Gloable;->DEBUG:Z

    return-void
.end method
