.class public Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;
.super Ljava/lang/Object;
.source "PublicParamsBuilder.java"


# static fields
.field public static HEADER_APP_TOKERN:Ljava/lang/String;

.field public static HEADER_APP_VER:Ljava/lang/String;

.field public static HEADER_CALLID:Ljava/lang/String;

.field public static HEADER_CHANNEL:Ljava/lang/String;

.field public static HEADER_COUNTRY:Ljava/lang/String;

.field public static HEADER_LOCALE:Ljava/lang/String;

.field public static HEADER_PLATFORM:Ljava/lang/String;

.field public static HEADER_PROTO_VER:Ljava/lang/String;

.field public static HEADER_TIMEZONE:Ljava/lang/String;

.field public static HEAD_APP_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "apptoken"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_APP_TOKERN:Ljava/lang/String;

    .line 20
    const-string v0, "appname"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEAD_APP_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "callid"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_CALLID:Ljava/lang/String;

    .line 30
    const-string v0, "country"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_COUNTRY:Ljava/lang/String;

    .line 35
    const-string v0, "timezone"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_TIMEZONE:Ljava/lang/String;

    .line 40
    const-string v0, "channel"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_CHANNEL:Ljava/lang/String;

    .line 45
    const-string v0, "appplatform"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_PLATFORM:Ljava/lang/String;

    .line 50
    const-string v0, "cv"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_APP_VER:Ljava/lang/String;

    .line 55
    const-string v0, "v"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_PROTO_VER:Ljava/lang/String;

    .line 60
    const-string v0, "lang"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEADER_LOCALE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completeURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    return-object p2
.end method

.method public fillPublicHeader(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p3, "requestBuilder"    # Lcom/squareup/okhttp/Request$Builder;

    .prologue
    .line 64
    sget-object v0, Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;->HEAD_APP_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 65
    return-void
.end method
