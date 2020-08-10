.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;
.super Ljava/lang/Object;
.source "RemoteBroadcast.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/ingenic/iwds/content/RemoteIntent;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;-><init>(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "callerId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 36
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;-><init>(ILandroid/content/Intent;Ljava/lang/String;ZZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "callerId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "sticky"    # Z
    .param p5, "ordered"    # Z

    .prologue
    .line 41
    invoke-static {p2}, Lcom/ingenic/iwds/content/RemoteIntent;->fromIntent(Landroid/content/Intent;)Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;-><init>(ILcom/ingenic/iwds/content/RemoteIntent;Ljava/lang/String;ZZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILcom/ingenic/iwds/content/RemoteIntent;)V
    .locals 1
    .param p1, "callerId"    # I
    .param p2, "intent"    # Lcom/ingenic/iwds/content/RemoteIntent;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;-><init>(ILcom/ingenic/iwds/content/RemoteIntent;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILcom/ingenic/iwds/content/RemoteIntent;Ljava/lang/String;)V
    .locals 6
    .param p1, "callerId"    # I
    .param p2, "intent"    # Lcom/ingenic/iwds/content/RemoteIntent;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;-><init>(ILcom/ingenic/iwds/content/RemoteIntent;Ljava/lang/String;ZZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILcom/ingenic/iwds/content/RemoteIntent;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "callerId"    # I
    .param p2, "intent"    # Lcom/ingenic/iwds/content/RemoteIntent;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "sticky"    # Z
    .param p5, "ordered"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->a:I

    .line 55
    iput-object p2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->b:Lcom/ingenic/iwds/content/RemoteIntent;

    .line 56
    iput-object p3, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->c:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->d:Z

    .line 58
    iput-boolean p5, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->e:Z

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->b:Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->b:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v0}, Lcom/ingenic/iwds/content/RemoteIntent;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallerId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->a:I

    return v0
.end method

.method public getIntent()Lcom/ingenic/iwds/content/RemoteIntent;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->b:Lcom/ingenic/iwds/content/RemoteIntent;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isOrdered()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->e:Z

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->d:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->a:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/ingenic/iwds/content/RemoteIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/content/RemoteIntent;

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->b:Lcom/ingenic/iwds/content/RemoteIntent;

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->c:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->d:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->e:Z

    .line 116
    return-void

    :cond_1
    move v0, v2

    .line 114
    goto :goto_0

    :cond_2
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->b:Lcom/ingenic/iwds/content/RemoteIntent;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->b:Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/content/RemoteIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->d:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->e:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 102
    goto :goto_1

    :cond_2
    move v1, v2

    .line 103
    goto :goto_2
.end method
