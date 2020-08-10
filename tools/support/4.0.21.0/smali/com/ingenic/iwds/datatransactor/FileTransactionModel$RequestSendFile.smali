.class Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;
.super Ljava/lang/Object;
.source "FileTransactionModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/FileTransactionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestSendFile"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x46c337649e366ae0L


# instance fields
.field private info:Lcom/ingenic/iwds/datatransactor/FileInfo;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/datatransactor/FileInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/ingenic/iwds/datatransactor/FileInfo;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;->info:Lcom/ingenic/iwds/datatransactor/FileInfo;

    .line 338
    return-void
.end method

.method static synthetic access$200(Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;)Lcom/ingenic/iwds/datatransactor/FileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;->info:Lcom/ingenic/iwds/datatransactor/FileInfo;

    return-object v0
.end method
