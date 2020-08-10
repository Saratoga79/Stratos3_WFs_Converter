.class public Lcom/huami/watch/transport/Transporter$ConnectionResult;
.super Ljava/lang/Object;
.source "Transporter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/Transporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/transport/Transporter$ConnectionResult;",
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
    .line 164
    new-instance v0, Lcom/huami/watch/transport/Transporter$ConnectionResult$1;

    invoke-direct {v0}, Lcom/huami/watch/transport/Transporter$ConnectionResult$1;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/Transporter$ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/transport/Transporter$ConnectionResult;->mResultCode:I

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huami/watch/transport/Transporter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/huami/watch/transport/Transporter$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/Transporter$ConnectionResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/huami/watch/transport/Transporter$ConnectionResult;->mResultCode:I

    packed-switch v0, :pswitch_data_0

    .line 146
    const-string v0, "Assert"

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "success"

    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "service is unavailable"

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "service authentication failure"

    goto :goto_0

    .line 135
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
    .line 157
    iget v0, p0, Lcom/huami/watch/transport/Transporter$ConnectionResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void
.end method
