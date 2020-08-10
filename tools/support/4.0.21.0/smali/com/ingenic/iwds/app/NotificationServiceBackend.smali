.class public Lcom/ingenic/iwds/app/NotificationServiceBackend;
.super Ljava/lang/Object;
.source "NotificationServiceBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/app/NotificationServiceBackend$a;
    }
.end annotation


# instance fields
.field a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/app/NotificationServiceBackend$2;-><init>(Lcom/ingenic/iwds/app/NotificationServiceBackend;)V

    iput-object v0, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend;->a:Lcom/ingenic/iwds/app/INotificationServiceBackend;

    .line 78
    new-instance v0, Lcom/ingenic/iwds/app/NotificationServiceBackend$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/app/NotificationServiceBackend$1;-><init>(Lcom/ingenic/iwds/app/NotificationServiceBackend;)V

    iput-object v0, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend;->b:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/app/NotificationServiceBackend;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 55
    return-void
.end method

.method public onCancelAll(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public onHandle(Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "note"    # Lcom/ingenic/iwds/app/Note;

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
