.class public Lcom/ingenic/iwds/content/RemoteIntent;
.super Ljava/lang/Object;
.source "RemoteIntent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/content/RemoteIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/ComponentName;

.field private g:Landroid/graphics/Rect;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/ingenic/iwds/content/RemoteIntent;

.field private j:Landroid/content/ClipData;

.field private k:Lcom/ingenic/iwds/os/RemoteBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/ingenic/iwds/content/RemoteIntent$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/content/RemoteIntent$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/content/RemoteIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->b:Landroid/net/Uri;

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->c:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->d:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->e:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->f:Landroid/content/ComponentName;

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    new-instance v1, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/content/RemoteIntent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    new-instance v1, Landroid/content/ClipData;

    invoke-direct {v1, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object v1, p0, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    invoke-static {v0}, Lcom/ingenic/iwds/os/RemoteBundle;->fromBunble(Landroid/os/Bundle;)Lcom/ingenic/iwds/os/RemoteBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    .line 107
    :cond_3
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->a:Ljava/lang/String;

    .line 111
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->b:Landroid/net/Uri;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->c:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->d:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->e:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->f:Landroid/content/ComponentName;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    if-lez v1, :cond_1

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    .line 124
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 125
    iget-object v2, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    .line 131
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    sget-object v0, Lcom/ingenic/iwds/content/RemoteIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/content/RemoteIntent;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    .line 135
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    .line 139
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    sget-object v0, Lcom/ingenic/iwds/os/RemoteBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/os/RemoteBundle;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    .line 142
    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/ingenic/iwds/content/RemoteIntent;)V
    .locals 2
    .param p1, "in"    # Lcom/ingenic/iwds/content/RemoteIntent;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->a:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->b:Landroid/net/Uri;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->b:Landroid/net/Uri;

    .line 53
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->c:Ljava/lang/String;

    .line 54
    iget v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->d:I

    iput v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->d:I

    .line 55
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->e:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->f:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->f:Landroid/content/ComponentName;

    .line 58
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    .line 66
    :cond_1
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Lcom/ingenic/iwds/content/RemoteIntent;

    iget-object v1, p1, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/content/RemoteIntent;-><init>(Lcom/ingenic/iwds/content/RemoteIntent;)V

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    .line 70
    :cond_2
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Landroid/content/ClipData;

    iget-object v1, p1, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    .line 74
    :cond_3
    iget-object v0, p1, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Lcom/ingenic/iwds/os/RemoteBundle;

    iget-object v1, p1, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/RemoteBundle;-><init>(Lcom/ingenic/iwds/os/RemoteBundle;)V

    iput-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    .line 77
    :cond_4
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/ingenic/iwds/content/RemoteIntent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/content/RemoteIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/content/RemoteIntent;-><init>(Lcom/ingenic/iwds/content/RemoteIntent;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 243
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->b:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->d:I

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->f:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 250
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v0}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 256
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 257
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-virtual {v0}, Lcom/ingenic/iwds/os/RemoteBundle;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 258
    return-object v2

    :cond_2
    move-object v0, v1

    .line 255
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->b:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 159
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->f:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 164
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->i:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/content/RemoteIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_2
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->j:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    :goto_3
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/ingenic/iwds/content/RemoteIntent;->k:Lcom/ingenic/iwds/os/RemoteBundle;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/os/RemoteBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :goto_4
    return-void

    .line 184
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 198
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
