.class public Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;
.super Ljava/lang/Object;
.source "CameraTransactionModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TakePictureDone"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public frame:Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method

.method public constructor <init>(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V
    .locals 0
    .param p1, "Frame"    # Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;->frame:Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    .line 277
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;->frame:Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 287
    return-void
.end method
