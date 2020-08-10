.class final Lcom/ingenic/iwds/os/SafeParcelUuid$1;
.super Ljava/lang/Object;
.source "SafeParcelUuid.java"

# interfaces
.implements Lcom/ingenic/iwds/os/SafeParcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/os/SafeParcelUuid;
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
        "Lcom/ingenic/iwds/os/SafeParcelUuid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ingenic/iwds/os/SafeParcel;)Lcom/ingenic/iwds/os/SafeParcelUuid;
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/ingenic/iwds/os/SafeParcel;->readLong()J

    move-result-wide v0

    .line 109
    invoke-virtual {p1}, Lcom/ingenic/iwds/os/SafeParcel;->readLong()J

    move-result-wide v2

    .line 110
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 112
    new-instance v0, Lcom/ingenic/iwds/os/SafeParcelUuid;

    invoke-direct {v0, v4}, Lcom/ingenic/iwds/os/SafeParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public a(I)[Lcom/ingenic/iwds/os/SafeParcelUuid;
    .locals 1

    .prologue
    .line 116
    new-array v0, p1, [Lcom/ingenic/iwds/os/SafeParcelUuid;

    return-object v0
.end method

.method public synthetic createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcelUuid$1;->a(Lcom/ingenic/iwds/os/SafeParcel;)Lcom/ingenic/iwds/os/SafeParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/os/SafeParcelUuid$1;->a(I)[Lcom/ingenic/iwds/os/SafeParcelUuid;

    move-result-object v0

    return-object v0
.end method
