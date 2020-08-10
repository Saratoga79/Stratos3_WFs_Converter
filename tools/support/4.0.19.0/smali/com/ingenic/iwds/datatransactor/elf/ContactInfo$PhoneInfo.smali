.class public Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
