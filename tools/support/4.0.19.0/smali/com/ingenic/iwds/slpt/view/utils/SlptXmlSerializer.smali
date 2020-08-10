.class public Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;
.super Ljava/lang/Object;
.source "SlptXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field buffer:Ljava/lang/StringBuffer;

.field lastDepth:I

.field serializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    .line 36
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 37
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->lastDepth:I

    .line 38
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 39
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 40
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 41
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 42
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->getDepth()I

    move-result v0

    .line 132
    .local v0, "depth":I
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v1, v4, 0x2

    .line 133
    .local v1, "end":I
    iget v4, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->lastDepth:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x2

    .line 135
    .local v3, "start":I
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 136
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 137
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v1, v5, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->lastDepth:I

    .line 143
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->buffer:Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    return-object v4
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 90
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 206
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getDepth()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 77
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/SlptXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->text([CII)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method
