.class public Lcom/huami/watch/watchface/custom/model/ConfigInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huami/watch/watchface/custom/model/ConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configType:I

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo$1;

    invoke-direct {v0}, Lcom/huami/watch/watchface/custom/model/ConfigInfo$1;-><init>()V

    sput-object v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->configType:I

    iput p2, p0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->position:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->configType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->position:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfigType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->configType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->configType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
