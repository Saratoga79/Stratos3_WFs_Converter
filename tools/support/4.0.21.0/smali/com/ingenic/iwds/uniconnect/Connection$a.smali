.class final Lcom/ingenic/iwds/uniconnect/Connection$a;
.super Ljava/io/InputStream;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/uniconnect/Connection;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/Connection$a;->a:Lcom/ingenic/iwds/uniconnect/Connection;

    .line 55
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection$a;->a:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/Connection;->available()I

    move-result v0

    .line 59
    if-gez v0, :cond_0

    .line 60
    invoke-static {v0}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwUniconnectIOException(I)V

    .line 62
    :cond_0
    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 72
    new-array v2, v3, [B

    move v0, v1

    .line 75
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 76
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection$a;->a:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-virtual {v0, v2, v1, v3}, Lcom/ingenic/iwds/uniconnect/Connection;->read([BII)I

    move-result v0

    .line 77
    if-gez v0, :cond_0

    .line 78
    invoke-static {v0}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwUniconnectIOException(I)V

    goto :goto_0

    .line 81
    :cond_1
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection$a;->a:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ingenic/iwds/uniconnect/Connection;->read([BII)I

    move-result v0

    .line 87
    if-gez v0, :cond_0

    .line 88
    invoke-static {v0}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwUniconnectIOException(I)V

    .line 90
    :cond_0
    return v0
.end method
