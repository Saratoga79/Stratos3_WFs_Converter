.class public abstract Lcom/ingenic/iwds/datatransactor/TransactorParcelableCreator;
.super Ljava/lang/Object;
.source "TransactorParcelableCreator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Landroid/os/Parcelable;",
        "T2::",
        "Lcom/ingenic/iwds/os/SafeParcelable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected m_parcelableCreator:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<TT1;>;"
        }
    .end annotation
.end field

.field protected m_safeParcelableCreator:Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
