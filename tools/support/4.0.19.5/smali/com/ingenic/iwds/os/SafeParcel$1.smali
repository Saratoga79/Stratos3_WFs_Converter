.class final Lcom/ingenic/iwds/os/SafeParcel$1;
.super Ljava/lang/Object;
.source "SafeParcel.java"

# interfaces
.implements Lcom/ingenic/iwds/os/SafeParcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/os/SafeParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/ingenic/iwds/os/SafeParcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel$1;->a(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcel$1;->a(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
