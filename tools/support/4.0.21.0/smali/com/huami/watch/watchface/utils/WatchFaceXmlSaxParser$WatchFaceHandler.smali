.class Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchFaceHandler"
.end annotation


# instance fields
.field private watchFaceItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/model/WatchFaceModuleItem;",
            ">;"
        }
    .end annotation
.end field

.field private watchface:Lcom/huami/watch/watchface/model/WatchFaceModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;)Lcom/huami/watch/watchface/model/WatchFaceModule;
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->getWatchFace()Lcom/huami/watch/watchface/model/WatchFaceModule;

    move-result-object p0

    return-object p0
.end method

.method private getWatchFace()Lcom/huami/watch/watchface/model/WatchFaceModule;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->watchface:Lcom/huami/watch/watchface/model/WatchFaceModule;

    return-object v0
.end method


# virtual methods
.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->watchface:Lcom/huami/watch/watchface/model/WatchFaceModule;

    iget-object v1, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->watchFaceItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/model/WatchFaceModule;->setWatchFaceItemList(Ljava/util/List;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/huami/watch/watchface/model/WatchFaceModule;

    invoke-direct {v0}, Lcom/huami/watch/watchface/model/WatchFaceModule;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->watchface:Lcom/huami/watch/watchface/model/WatchFaceModule;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->watchFaceItemList:Ljava/util/List;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "WatchFaceItem"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_2

    new-instance p1, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;

    invoke-direct {p1}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;-><init>()V

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p2

    if-ge p3, p2, :cond_0

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/huami/watch/watchface/model/WatchFaceModuleItem;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->watchFaceItemList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string p1, "WatchFace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    if-ge p3, p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/utils/WatchFaceXmlSaxParser$WatchFaceHandler;->watchface:Lcom/huami/watch/watchface/model/WatchFaceModule;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/huami/watch/watchface/model/WatchFaceModule;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
