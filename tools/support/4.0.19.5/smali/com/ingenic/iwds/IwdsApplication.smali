.class public Lcom/ingenic/iwds/IwdsApplication;
.super Ljava/lang/Object;
.source "IwdsApplication.java"


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private a:Lcom/ingenic/iwds/DeviceDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/IwdsApplication;->a:Lcom/ingenic/iwds/DeviceDescriptor;

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/ingenic/iwds/IwdsApplication;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getLocalDeviceDescriptor()Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ingenic/iwds/IwdsApplication;->a:Lcom/ingenic/iwds/DeviceDescriptor;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;II)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceClass"    # I
    .param p3, "deviceSubClass"    # I

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ingenic/iwds/IwdsApplication;->b:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/ingenic/iwds/DeviceDescriptor;

    const-string v1, "any"

    const-string v2, "any"

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/ingenic/iwds/DeviceDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/ingenic/iwds/IwdsApplication;->a:Lcom/ingenic/iwds/DeviceDescriptor;

    .line 85
    invoke-static {}, Lcom/ingenic/iwds/IwdsInitializer;->getInstance()Lcom/ingenic/iwds/IwdsInitializer;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/IwdsApplication;->a:Lcom/ingenic/iwds/DeviceDescriptor;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/IwdsInitializer;->initialize(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
