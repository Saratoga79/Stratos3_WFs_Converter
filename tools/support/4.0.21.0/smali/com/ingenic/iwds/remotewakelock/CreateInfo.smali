.class Lcom/ingenic/iwds/remotewakelock/CreateInfo;
.super Lcom/ingenic/iwds/remotewakelock/a;
.source "RemoteWakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotewakelock/CreateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotewakelock/CreateInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "levelAndFlags"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/a;-><init>()V

    .line 38
    iput p1, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->a:I

    .line 39
    iput p2, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->b:I

    .line 40
    iput p3, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->c:I

    .line 41
    iput-object p4, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/a;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getLevelAndFlags()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->c:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->a:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->b:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->c:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->d:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
