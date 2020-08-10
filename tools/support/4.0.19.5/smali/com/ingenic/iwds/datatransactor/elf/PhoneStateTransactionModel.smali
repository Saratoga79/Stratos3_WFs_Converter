.class public Lcom/ingenic/iwds/datatransactor/elf/PhoneStateTransactionModel;
.super Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;
.source "PhoneStateTransactionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/PhoneStateTransactionModel$PhoneStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel",
        "<",
        "Lcom/ingenic/iwds/datatransactor/elf/PhoneState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/elf/PhoneStateTransactionModel$PhoneStateCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/elf/PhoneStateTransactionModel$PhoneStateCallback;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v0, Lcom/ingenic/iwds/datatransactor/elf/PhoneState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;-><init>(Landroid/content/Context;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;Ljava/lang/String;)V

    .line 27
    return-void
.end method
