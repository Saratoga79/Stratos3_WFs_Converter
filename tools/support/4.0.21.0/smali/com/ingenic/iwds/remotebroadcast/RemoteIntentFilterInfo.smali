.class Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;
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
            "Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/IntentFilter;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "permission"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/a;-><init>()V

    .line 42
    iput p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->a:I

    .line 43
    iput p2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->b:I

    .line 44
    iput-object p3, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->c:Landroid/content/IntentFilter;

    .line 45
    iput-object p4, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->d:Ljava/lang/String;

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/a;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->c:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->a:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->b:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->c:Landroid/content/IntentFilter;

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->d:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteIntentFilterInfo[id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-IntentFilter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-permission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->c:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
