.class final Lcom/ingenic/iwds/content/RemoteIntent$1;
.super Ljava/lang/Object;
.source "RemoteIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/content/RemoteIntent;
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
        "Lcom/ingenic/iwds/content/RemoteIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ingenic/iwds/content/RemoteIntent;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/ingenic/iwds/content/RemoteIntent;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/content/RemoteIntent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ingenic/iwds/content/RemoteIntent;
    .locals 1

    .prologue
    .line 219
    new-array v0, p1, [Lcom/ingenic/iwds/content/RemoteIntent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/content/RemoteIntent$1;->a(Landroid/os/Parcel;)Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/content/RemoteIntent$1;->a(I)[Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v0

    return-object v0
.end method
