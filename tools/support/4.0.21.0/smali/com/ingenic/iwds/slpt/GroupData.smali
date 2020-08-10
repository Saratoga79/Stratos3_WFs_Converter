.class public Lcom/ingenic/iwds/slpt/GroupData;
.super Ljava/lang/Object;
.source "GroupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/slpt/GroupData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupName:Ljava/lang/String;

.field public pictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/PictureData;",
            ">;"
        }
    .end annotation
.end field

.field public pictureNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/ingenic/iwds/slpt/GroupData$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/GroupData$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/slpt/GroupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/GroupData;->pictureList:Ljava/util/ArrayList;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/GroupData;->groupName:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/slpt/GroupData;->pictureNum:I

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 24
    iget v1, p0, Lcom/ingenic/iwds/slpt/GroupData;->pictureNum:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/GroupData;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/GroupData;->pictureList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/GroupData;->pictureList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/GroupData;->pictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/PictureData;

    invoke-virtual {v1, p1, p2}, Lcom/ingenic/iwds/slpt/PictureData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
