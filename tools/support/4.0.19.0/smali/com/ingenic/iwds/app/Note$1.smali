.class final Lcom/ingenic/iwds/app/Note$1;
.super Ljava/lang/Object;
.source "Note.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/app/Note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ingenic/iwds/app/Note;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ingenic/iwds/app/Note;
    .locals 2

    .prologue
    .line 92
    new-instance v1, Lcom/ingenic/iwds/app/Note;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/app/Note;-><init>(Lcom/ingenic/iwds/app/Note$1;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 99
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v1, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    .line 101
    :cond_0
    return-object v1
.end method

.method public a(I)[Lcom/ingenic/iwds/app/Note;
    .locals 1

    .prologue
    .line 106
    new-array v0, p1, [Lcom/ingenic/iwds/app/Note;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/app/Note$1;->a(Landroid/os/Parcel;)Lcom/ingenic/iwds/app/Note;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/app/Note$1;->a(I)[Lcom/ingenic/iwds/app/Note;

    move-result-object v0

    return-object v0
.end method
