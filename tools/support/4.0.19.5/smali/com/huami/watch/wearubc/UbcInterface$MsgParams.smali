.class public Lcom/huami/watch/wearubc/UbcInterface$MsgParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/wearubc/UbcInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgParams"
.end annotation


# instance fields
.field mAppId:Ljava/lang/String;

.field mAppVer:Ljava/lang/String;

.field mCategery:Ljava/lang/String;

.field mEventId:Ljava/lang/String;

.field mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mEventId:Ljava/lang/String;

    iput-object p4, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mParams:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mCategery:Ljava/lang/String;

    iput-object p2, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mAppVer:Ljava/lang/String;

    iput-object p3, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mAppId:Ljava/lang/String;

    return-void
.end method
