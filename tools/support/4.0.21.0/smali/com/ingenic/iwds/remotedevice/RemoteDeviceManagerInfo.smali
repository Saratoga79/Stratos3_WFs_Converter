.class public Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.super Ljava/lang/Object;
.source "RemoteDeviceManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SettingResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$AppListResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$StorageInfoResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;,
        Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;
    }
.end annotation


# static fields
.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x70

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x6f

.field public static final DELETE_FAILED_USER_RESTRICTED:I = -0x71

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_SEND_APK_FILE_ERROR:I = -0x69

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final REQUEST_FAILED_PREVIOUS_DOING:I = -0xc8

.field public static final REQUEST_FAILED_SERVICE_DISCONNECTED:I = -0xc9

.field static final REQUEST_INSTALL_CONFIRM_OK:I = 0x1

.field public static final REQUEST_REMOTE_FAILED:I = -0x77

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field static final TYPE_CLEAR_ALL_APP_DATA_CACHE:I = 0x2

.field public static final TYPE_CLEAR_APP_CACHE:I = 0x1

.field public static final TYPE_CLEAR_APP_USER_DATA:I = 0x0

.field static final TYPE_CONFIRM_INSTALL_APP:I = 0x6

.field static final TYPE_DELETE_APP:I = 0x7

.field static final TYPE_DM_SERVICE_CONNECTED:I = 0x14

.field static final TYPE_DM_SERVICE_DISCONNECTED:I = 0x15

.field static final TYPE_DO_SETTING:I = 0xc

.field static final TYPE_GET_APP_LIST:I = 0x3

.field static final TYPE_GET_RUNNING_PROCESS_INFO:I = 0xa

.field static final TYPE_GET_SETTING:I = 0xd

.field static final TYPE_GET_STORAGE_INFO:I = 0x4

.field static final TYPE_GET_SYSTEM_MEM_INFO:I = 0x9

.field static final TYPE_INSTALL_APP:I = 0x5

.field static final TYPE_KILL_PROCESS:I = 0xb

.field static final TYPE_PKG_SIZE_INFO:I = 0x8

.field public static final TYPE_SETTING_WEAR_ON_WHICH_HAND:I = 0x0

.field public static final VALUE_WEAR_ON_LEFT_HAND:I = 0x2

.field public static final VALUE_WEAR_ON_RIGHT_HAND:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    return-void
.end method

.method static toElfReturnCode(I)I
    .locals 1
    .param p0, "returnCode"    # I

    .prologue
    .line 631
    const/16 v0, -0x6e

    .line 632
    add-int/2addr v0, p0

    return v0
.end method
