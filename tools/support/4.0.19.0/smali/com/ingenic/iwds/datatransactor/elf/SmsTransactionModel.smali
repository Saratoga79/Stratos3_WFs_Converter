.class public Lcom/ingenic/iwds/datatransactor/elf/SmsTransactionModel;
.super Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;
.source "SmsTransactionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/SmsTransactionModel$SmsTransactionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel",
        "<",
        "Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/elf/SmsTransactionModel$SmsTransactionCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/elf/SmsTransactionModel$SmsTransactionCallback;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;-><init>(Landroid/content/Context;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;Ljava/lang/String;)V

    .line 27
    return-void
.end method
