.class public Lcom/ingenic/iwds/os/SafeParcelUuid;
.super Ljava/lang/Object;
.source "SafeParcelUuid.java"

# interfaces
.implements Lcom/ingenic/iwds/os/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/os/SafeParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/ingenic/iwds/os/SafeParcelUuid$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/os/SafeParcelUuid$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/os/SafeParcelUuid;->CREATOR:Lcom/ingenic/iwds/os/SafeParcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    .line 39
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/ingenic/iwds/os/SafeParcelUuid;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/ingenic/iwds/os/SafeParcelUuid;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/os/SafeParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 91
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 81
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    instance-of v1, p1, Lcom/ingenic/iwds/os/SafeParcelUuid;

    if-eqz v1, :cond_0

    .line 89
    check-cast p1, Lcom/ingenic/iwds/os/SafeParcelUuid;

    .line 91
    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p0, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    iget-object v1, p1, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Lcom/ingenic/iwds/os/SafeParcel;I)V
    .locals 2
    .param p1, "dest"    # Lcom/ingenic/iwds/os/SafeParcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lcom/ingenic/iwds/os/SafeParcelUuid;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/os/SafeParcel;->writeLong(J)V

    .line 103
    return-void
.end method
