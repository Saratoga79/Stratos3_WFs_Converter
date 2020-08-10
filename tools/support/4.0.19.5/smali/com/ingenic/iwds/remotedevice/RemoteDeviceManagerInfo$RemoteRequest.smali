.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;
.super Ljava/lang/Object;
.source "RemoteDeviceManagerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x135ffe5884e1306L


# instance fields
.field public apkFilePath:Ljava/lang/String;

.field public isInstalledInExternal:Z

.field public packageName:Ljava/lang/String;

.field public requiredSize:J

.field public subType:I

.field public type:I

.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->type:I

    .line 209
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->type:I

    .line 213
    iput p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->subType:I

    .line 214
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "value"    # I

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->type:I

    .line 218
    iput p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->subType:I

    .line 219
    iput p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->value:I

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->packageName:Ljava/lang/String;

    .line 224
    iput p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->type:I

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "apkFilePath"    # Ljava/lang/String;
    .param p4, "requiredSize"    # J
    .param p6, "isInstalledInExternal"    # Z

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;-><init>(Ljava/lang/String;I)V

    .line 230
    iput-object p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->apkFilePath:Ljava/lang/String;

    .line 231
    iput-wide p4, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->requiredSize:J

    .line 232
    iput-boolean p6, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->isInstalledInExternal:Z

    .line 233
    return-void
.end method
