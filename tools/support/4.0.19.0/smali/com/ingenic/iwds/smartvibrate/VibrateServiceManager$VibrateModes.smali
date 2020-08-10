.class public Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;
.super Ljava/lang/Object;
.source "VibrateServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VibrateModes"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;

.field public effect:[I

.field public length:I


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$VibrateModes;->a:Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
