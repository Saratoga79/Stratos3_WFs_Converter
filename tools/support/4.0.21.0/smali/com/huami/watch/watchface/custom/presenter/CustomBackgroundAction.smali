.class public Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundAction;
.super Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getDestResPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/watchface/customBg/"

    return-object v0
.end method

.method public getDestSlptPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/watchface/customSlptBg/"

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    const-string v0, "customBg"

    return-object v0
.end method

.method public getSrcSlptPathName()Ljava/lang/String;
    .locals 1

    const-string v0, "customSlptBg"

    return-object v0
.end method
