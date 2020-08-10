.class final Lcom/huami/watch/transport/Status$1;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/Status;
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
        "Lcom/huami/watch/transport/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/transport/Status;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    new-instance v0, Lcom/huami/watch/transport/Status;

    invoke-direct {v0, p1}, Lcom/huami/watch/transport/Status;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/Status$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/transport/Status;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huami/watch/transport/Status;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    new-array v0, p1, [Lcom/huami/watch/transport/Status;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/Status$1;->newArray(I)[Lcom/huami/watch/transport/Status;

    move-result-object v0

    return-object v0
.end method
