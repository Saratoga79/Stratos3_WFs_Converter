.class public Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;
.super Ljava/lang/Object;
.source "RemoteAuthInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public manufacture:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public serialNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Application package name is null"

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 50
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    .line 51
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    .line 54
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "manufacture"    # Ljava/lang/String;
    .param p3, "serilNo"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Device model is null"

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 37
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Device manufacture is null"

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 38
    if-nez p3, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "Device seril number is null"

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 39
    if-nez p4, :cond_3

    :goto_3
    const-string v0, "Application package name is null"

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    .line 45
    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    :cond_1
    move v0, v2

    .line 37
    goto :goto_1

    :cond_2
    move v0, v2

    .line 38
    goto :goto_2

    :cond_3
    move v1, v2

    .line 39
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 135
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 107
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    instance-of v2, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;

    if-nez v2, :cond_3

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_3
    check-cast p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;

    .line 114
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 115
    iget-object v2, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 120
    iget-object v2, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 123
    goto :goto_0

    .line 124
    :cond_7
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 125
    iget-object v2, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_8
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 128
    goto :goto_0

    .line 129
    :cond_9
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 130
    iget-object v2, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 131
    goto :goto_0

    .line 132
    :cond_a
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    .line 92
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 93
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 94
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 95
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 96
    :goto_2
    add-int/2addr v0, v2

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 98
    :goto_3
    add-int/2addr v0, v1

    .line 100
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteDeivceAuthInfo [model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->manufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteAuthInfo;->serialNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
