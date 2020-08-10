.class Lcom/ingenic/iwds/remotedevice/RemotePackageStats;
.super Ljava/lang/Object;
.source "RemotePackageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemotePackageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cacheSize:J

.field public codeSize:J

.field public dataSize:J

.field public externalCacheSize:J

.field public externalCodeSize:J

.field public externalDataSize:J

.field public externalMediaSize:J

.field public externalObbSize:J

.field public packageName:Ljava/lang/String;

.field private packageStats:Landroid/content/pm/PackageStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemotePackageStats$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageStats;)V
    .locals 2
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iget-object v0, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    .line 141
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->codeSize:J

    .line 142
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->dataSize:J

    .line 143
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->cacheSize:J

    .line 144
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCodeSize:J

    .line 145
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalDataSize:J

    .line 146
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCacheSize:J

    .line 147
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalMediaSize:J

    .line 148
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalObbSize:J

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/content/pm/PackageStats;

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    .line 129
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->codeSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 130
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->dataSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 131
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->cacheSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 132
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCodeSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 133
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalDataSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 134
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCacheSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 135
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalMediaSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 136
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalObbSize:J

    iput-wide v2, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    .line 124
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

.method public getLocalPackageStats()Landroid/content/pm/PackageStats;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageStats:Landroid/content/pm/PackageStats;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PackageStats{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->codeSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 87
    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->codeSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->dataSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 91
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->dataSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->cacheSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 95
    const-string v1, " cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->cacheSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCodeSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 99
    const-string v1, " extCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCodeSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    :cond_3
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalDataSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 103
    const-string v1, " extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalDataSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    :cond_4
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCacheSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 107
    const-string v1, " extCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCacheSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    :cond_5
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalMediaSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 111
    const-string v1, " media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalMediaSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    :cond_6
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalObbSize:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 115
    const-string v1, " obb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-wide v2, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalObbSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->codeSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->dataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->cacheSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCodeSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalCacheSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalMediaSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->externalObbSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    return-void
.end method
