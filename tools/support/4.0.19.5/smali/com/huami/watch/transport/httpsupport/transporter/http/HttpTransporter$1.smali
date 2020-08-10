.class Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter$1;
.super Lcom/squareup/okhttp/Request$Builder;
.source "HttpTransporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->post(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/squareup/okhttp/MediaType;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    invoke-direct {p0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    invoke-static {v0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    invoke-static {v0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEADER OUT ====  for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_HTTP:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "WH-HTTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HEADER OUE ====  for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    invoke-super {p0, p1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method
