.class Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;
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
            "Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/ingenic/iwds/content/RemoteIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/ingenic/iwds/content/RemoteIntent;)V
    .locals 0
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "intent"    # Lcom/ingenic/iwds/content/RemoteIntent;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/a;-><init>()V

    .line 116
    iput p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->a:I

    .line 117
    iput p2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->b:I

    .line 118
    iput-object p3, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    .line 119
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/a;-><init>()V

    .line 122
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v0}, Lcom/ingenic/iwds/content/RemoteIntent;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Lcom/ingenic/iwds/content/RemoteIntent;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->a:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->b:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/ingenic/iwds/content/RemoteIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/content/RemoteIntent;

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    .line 154
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteIntentInfo[-id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 136
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->c:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/content/RemoteIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
