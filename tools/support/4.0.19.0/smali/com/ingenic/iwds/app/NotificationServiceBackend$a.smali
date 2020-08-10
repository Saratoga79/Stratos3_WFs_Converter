.class Lcom/ingenic/iwds/app/NotificationServiceBackend$a;
.super Ljava/lang/Object;
.source "NotificationServiceBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/app/NotificationServiceBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lcom/ingenic/iwds/app/Note;

.field final synthetic d:Lcom/ingenic/iwds/app/NotificationServiceBackend;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/app/NotificationServiceBackend;Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->d:Lcom/ingenic/iwds/app/NotificationServiceBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->a:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->b:I

    .line 69
    iput-object p4, p0, Lcom/ingenic/iwds/app/NotificationServiceBackend$a;->c:Lcom/ingenic/iwds/app/Note;

    .line 70
    return-void
.end method
