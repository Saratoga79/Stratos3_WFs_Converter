.class public Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;
.super Ljava/lang/Object;
.source "CameraTransactionModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestStartPreview"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4dd8a0381f11965eL


# instance fields
.field public sizeInfo:Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;->sizeInfo:Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;

    .line 247
    return-void
.end method
