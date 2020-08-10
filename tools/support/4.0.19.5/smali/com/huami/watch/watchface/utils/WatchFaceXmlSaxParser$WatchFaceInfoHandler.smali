.class Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchFaceInfoHandler"
.end annotation


# instance fields
.field private info:Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

.field private mKeyStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->mKeyStack:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;)Lcom/huami/watch/watchface/model/WatchFaceInfoModule;
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->getWatchFaceInfo()Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

    move-result-object p0

    return-object p0
.end method

.method private getWatchFaceInfo()Lcom/huami/watch/watchface/model/WatchFaceInfoModule;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->info:Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->info:Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

    iget-object p3, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->mKeyStack:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->mKeyStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

    invoke-direct {v0}, Lcom/huami/watch/watchface/model/WatchFaceInfoModule;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->info:Lcom/huami/watch/watchface/model/WatchFaceInfoModule;

    iget-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->mKeyStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceInfoHandler;->mKeyStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
