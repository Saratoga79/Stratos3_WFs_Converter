.class public Lcom/huami/watch/transport/ConnectionResult;
.super Ljava/lang/Object;
.source "ConnectionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/transport/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/huami/watch/transport/ConnectionResult$1;

    invoke-direct {v0}, Lcom/huami/watch/transport/ConnectionResult$1;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/transport/ConnectionResult;->mResultCode:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huami/watch/transport/ConnectionResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/huami/watch/transport/ConnectionResult$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/ConnectionResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/huami/watch/transport/ConnectionResult;->mResultCode:I

    packed-switch v0, :pswitch_data_0

    .line 67
    const-string v0, "Assert"

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string v0, "success"

    goto :goto_0

    .line 61
    :pswitch_1
    const-string v0, "service is unavailable"

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v0, "service authentication failure"

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget v0, p0, Lcom/huami/watch/transport/ConnectionResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
