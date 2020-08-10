.class public Lcom/ingenic/iwds/datatransactor/elf/LocaleTransactionModel;
.super Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;
.source "LocaleTransactionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/LocaleTransactionModel$LocaleTransactionModelCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/elf/LocaleTransactionModel$LocaleTransactionModelCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/elf/LocaleTransactionModel$LocaleTransactionModelCallback;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;-><init>(Landroid/content/Context;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;Ljava/lang/String;)V

    .line 45
    return-void
.end method
