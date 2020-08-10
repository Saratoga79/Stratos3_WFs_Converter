.class Lcom/ingenic/iwds/remotewakelock/CMDInfo;
.super Lcom/ingenic/iwds/remotewakelock/a;
.source "RemoteWakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMD_ACQUIRE:I = 0x1

.field public static final CMD_RELEASE:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotewakelock/CMDInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/CMDInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotewakelock/CMDInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;-><init>(III)V

    .line 140
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "cmd"    # I

    .prologue
    .line 143
    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;-><init>(IIIJ)V

    .line 144
    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 2
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "cmd"    # I
    .param p4, "timeout"    # J

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/a;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->c:I

    .line 136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->d:J

    .line 147
    iput p1, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->a:I

    .line 148
    iput p2, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->b:I

    .line 149
    iput p3, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->c:I

    .line 150
    iput-wide p4, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->d:J

    .line 151
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/a;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->c:I

    .line 136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->d:J

    .line 154
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getCmd()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->c:I

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->d:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->a:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->b:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->c:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->d:J

    .line 183
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 172
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-wide v0, p0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    return-void
.end method
