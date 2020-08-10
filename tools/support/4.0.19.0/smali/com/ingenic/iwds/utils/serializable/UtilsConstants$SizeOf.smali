.class public Lcom/ingenic/iwds/utils/serializable/UtilsConstants$SizeOf;
.super Ljava/lang/Object;
.source "UtilsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/utils/serializable/UtilsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SizeOf"
.end annotation


# static fields
.field public static final Boolean:I = 0x1

.field public static final Byte:I = 0x1

.field public static final Char:I = 0x2

.field public static final Double:I = 0x8

.field public static final FileChunk:I = 0x10000

.field public static final Float:I = 0x4

.field public static final Int:I = 0x4

.field public static final Long:I = 0x8

.field public static final Short:I = 0x2

.field public static final Type:I = 0x1


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/utils/serializable/UtilsConstants;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/utils/serializable/UtilsConstants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/utils/serializable/UtilsConstants;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/ingenic/iwds/utils/serializable/UtilsConstants$SizeOf;->a:Lcom/ingenic/iwds/utils/serializable/UtilsConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
