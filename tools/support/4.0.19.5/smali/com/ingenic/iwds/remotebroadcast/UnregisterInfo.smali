.class Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;
.super Lcom/ingenic/iwds/remotebroadcast/a;
.source "RemoteBroadcastInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/a;-><init>()V

    .line 178
    iput p1, p0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->a:I

    .line 179
    iput p2, p0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->b:I

    .line 180
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/a;-><init>()V

    .line 183
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 184
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->a:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->b:I

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 193
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return-void
.end method
