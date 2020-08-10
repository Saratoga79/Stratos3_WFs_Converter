.class public Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;
.super Ljava/lang/Object;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataTransactResult"
.end annotation


# static fields
.field public static final RESULT_FAILED_CHANNEL_UNAVAILABLE:I = 0x1

.field public static final RESULT_FAILED_FILE_STATUS_ERROR:I = 0x4

.field public static final RESULT_FAILED_IWDS_CRASH:I = 0x3

.field public static final RESULT_FAILED_LINK_DISCONNECTED:I = 0x2

.field public static final RESULT_OK:I


# instance fields
.field private m_resultCode:I

.field private m_transferedObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/datatransactor/DataTransactor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .param p2, "transferedObject"    # Ljava/lang/Object;
    .param p3, "resultCode"    # I

    .prologue
    .line 401
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->this$0:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->m_transferedObject:Ljava/lang/Object;

    .line 403
    iput p3, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->m_resultCode:I

    .line 404
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->m_resultCode:I

    return v0
.end method

.method public getTransferedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->m_transferedObject:Ljava/lang/Object;

    return-object v0
.end method
