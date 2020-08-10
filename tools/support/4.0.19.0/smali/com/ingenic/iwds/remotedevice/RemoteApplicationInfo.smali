.class public Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;
.super Ljava/lang/Object;
.source "RemoteApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private backupAgentName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private compatibleWidthLimitDp:I

.field private dataDir:Ljava/lang/String;

.field private descriptionRes:I

.field private enabled:Z

.field private firstInstallTime:J

.field private flags:I

.field public iconBitmap:Landroid/graphics/Bitmap;

.field private iconData:[B

.field public label:Ljava/lang/CharSequence;

.field private largestWidthLimitDp:I

.field private lastUpdateTime:J

.field private manageSpaceActivityName:Ljava/lang/String;

.field private nativeLibraryDir:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field private permission:Ljava/lang/String;

.field private processName:Ljava/lang/String;

.field private publicSourceDir:Ljava/lang/String;

.field private requiresSmallestWidthDp:I

.field private sharedUserId:Ljava/lang/String;

.field private sharedUserLabel:I

.field private sourceDir:Ljava/lang/String;

.field private targetSdkVersion:I

.field private taskAffinity:Ljava/lang/String;

.field private theme:I

.field private uiOptions:I

.field private uid:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "orig"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uiOptions:I

    .line 118
    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->flags:I

    .line 127
    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->requiresSmallestWidthDp:I

    .line 136
    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->compatibleWidthLimitDp:I

    .line 145
    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->largestWidthLimitDp:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->enabled:Z

    .line 256
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 257
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->permission:Ljava/lang/String;

    .line 258
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->processName:Ljava/lang/String;

    .line 259
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->className:Ljava/lang/String;

    .line 260
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->theme:I

    .line 261
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->flags:I

    .line 262
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->requiresSmallestWidthDp:I

    .line 263
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->compatibleWidthLimitDp:I

    .line 264
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->largestWidthLimitDp:I

    .line 265
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 266
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 267
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 268
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->dataDir:Ljava/lang/String;

    .line 269
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uid:I

    .line 270
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->targetSdkVersion:I

    .line 271
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->enabled:Z

    .line 272
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 273
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->descriptionRes:I

    .line 274
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uiOptions:I

    .line 275
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 277
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->iconData:[B

    .line 281
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 282
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->packageName:Ljava/lang/String;

    .line 283
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->versionCode:I

    .line 284
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->versionName:Ljava/lang/String;

    .line 285
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sharedUserId:Ljava/lang/String;

    .line 286
    iget v0, p2, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sharedUserLabel:I

    .line 287
    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->firstInstallTime:J

    .line 288
    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->lastUpdateTime:J

    .line 289
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uiOptions:I

    .line 118
    iput v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->flags:I

    .line 127
    iput v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->requiresSmallestWidthDp:I

    .line 136
    iput v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->compatibleWidthLimitDp:I

    .line 145
    iput v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->largestWidthLimitDp:I

    .line 189
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->enabled:Z

    .line 375
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 377
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 378
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->processName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->className:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->theme:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 382
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->flags:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 383
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->requiresSmallestWidthDp:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 385
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->compatibleWidthLimitDp:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 387
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->largestWidthLimitDp:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 389
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 390
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 391
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 393
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 394
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uid:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 395
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->targetSdkVersion:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 396
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->enabled:Z

    iput-boolean v0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 397
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 401
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->iconData:[B

    .line 405
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->iconData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 406
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->iconData:[B

    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 408
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->packageName:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->versionCode:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->versionName:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sharedUserId:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sharedUserLabel:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->firstInstallTime:J

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->lastUpdateTime:J

    .line 416
    return-void

    :cond_0
    move v0, v1

    .line 396
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 310
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 312
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 423
    array-length v0, p1

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 292
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 293
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .line 298
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 299
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 300
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 297
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 304
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 303
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 300
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteApplicationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->iconData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->iconData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 352
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 353
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->firstInstallTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 359
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 360
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
