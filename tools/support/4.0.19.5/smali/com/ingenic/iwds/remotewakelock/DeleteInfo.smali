.class Lcom/ingenic/iwds/remotewakelock/DeleteInfo;
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
            "Lcom/ingenic/iwds/remotewakelock/DeleteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotewakelock/DeleteInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/a;-><init>()V

    .line 93
    iput p1, p0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->a:I

    .line 94
    iput p2, p0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->b:I

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/a;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->a:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->b:I

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
