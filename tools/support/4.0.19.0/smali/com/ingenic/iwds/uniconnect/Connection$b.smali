.class final Lcom/ingenic/iwds/uniconnect/Connection$b;
.super Ljava/io/OutputStream;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/uniconnect/Connection;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/uniconnect/Connection;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/Connection$b;->a:Lcom/ingenic/iwds/uniconnect/Connection;

    .line 99
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 108
    new-array v2, v3, [B

    .line 109
    int-to-byte v0, p1

    aput-byte v0, v2, v1

    move v0, v1

    .line 112
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 113
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection$b;->a:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-virtual {v0, v2, v1, v3}, Lcom/ingenic/iwds/uniconnect/Connection;->write([BII)I

    move-result v0

    .line 114
    if-gez v0, :cond_0

    .line 115
    invoke-static {v0}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwUniconnectIOException(I)V

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    .line 122
    :goto_0
    if-lez p3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection$b;->a:Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ingenic/iwds/uniconnect/Connection;->write([BII)I

    move-result v0

    .line 124
    if-gez v0, :cond_0

    .line 125
    invoke-static {v0}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwUniconnectIOException(I)V

    .line 127
    :cond_0
    add-int/2addr p2, v0

    .line 128
    sub-int/2addr p3, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method
