.class public abstract Lcom/google/protobuf/nano/android/ParcelableMessageNano;
.super Lcom/google/protobuf/nano/MessageNano;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/protobuf/nano/android/ParcelableMessageNano;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/android/ParcelableMessageNano$1;

    invoke-direct {v0}, Lcom/google/protobuf/nano/android/ParcelableMessageNano$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/android/ParcelableMessageNano;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method
