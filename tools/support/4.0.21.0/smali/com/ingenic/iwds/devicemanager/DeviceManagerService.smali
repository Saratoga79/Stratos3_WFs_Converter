.class public Lcom/ingenic/iwds/devicemanager/DeviceManagerService;
.super Landroid/app/Service;
.source "DeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;-><init>(Lcom/ingenic/iwds/devicemanager/DeviceManagerService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->b:Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;

    .line 57
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 87
    const-string v0, "DeviceManagerService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    return v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 96
    const-string v0, "DeviceManagerService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v0, "onBind"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->b:Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    invoke-virtual {p0}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->a:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->a:Landroid/content/Context;

    const-string v1, "isOnRightHand"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorService;->setWearOnRightHand(Z)Z

    .line 48
    return-void
.end method
