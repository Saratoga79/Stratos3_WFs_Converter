.class public Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;,
        Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;
    }
.end annotation


# direct methods
.method public static parseWatchFace(Ljava/io/InputStream;)Lcom/huami/watch/watchface/model/WatchFaceModule;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    new-instance v2, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;

    invoke-direct {v2, v0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;-><init>(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$1;)V

    invoke-virtual {v1, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-static {v2}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->access$300(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;)Lcom/huami/watch/watchface/model/WatchFaceModule;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static parseWatchFaceInfo(Ljava/io/InputStream;)Lcom/huami/watch/watchface/model/WatchFaceInfoModule;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    new-instance v2, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;

    invoke-direct {v2, v0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;-><init>(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$1;)V

    invoke-virtual {v1, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-static {v2}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->access$100(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;)Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
