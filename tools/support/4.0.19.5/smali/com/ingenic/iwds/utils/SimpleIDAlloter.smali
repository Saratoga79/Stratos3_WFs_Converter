.class public Lcom/ingenic/iwds/utils/SimpleIDAlloter;
.super Ljava/lang/Object;
.source "SimpleIDAlloter.java"


# static fields
.field public static final INVALID:I


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->a:I

    .line 30
    return-void
.end method

.method public static isValid(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 64
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/ingenic/iwds/utils/SimpleIDAlloter;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-direct {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public allocation()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->a:I

    return v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->a:I

    .line 55
    return-void
.end method
