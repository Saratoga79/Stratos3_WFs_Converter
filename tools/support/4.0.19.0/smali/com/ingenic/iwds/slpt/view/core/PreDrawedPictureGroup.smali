.class public Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
.super Ljava/lang/Object;
.source "PreDrawedPictureGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;,
        Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SLPT-PreDrawedPicG"

.field public static final emptyGroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;


# instance fields
.field private index:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->emptyGroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->index:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    .line 62
    const-string v0, "pre_drawed_empty"

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assets_path"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->index:I

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 39
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->add(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->index:I

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 48
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->add(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>([[B)V
    .locals 3
    .param p1, "mem"    # [[B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->index:I

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 57
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->add(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public static native addPicture(Ljava/lang/String;III[B)V
.end method


# virtual methods
.method public add(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;)V
    .locals 2
    .param p1, "picture"    # Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->index:I

    iput v0, p1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    .line 81
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->index:I

    .line 89
    return-void
.end method

.method public get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const-string v1, "SLPT-PreDrawedPicG"

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "must register PreDrawedPictureGroup to slptclock"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
