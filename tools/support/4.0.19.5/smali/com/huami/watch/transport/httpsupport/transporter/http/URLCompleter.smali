.class public Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter;
.super Ljava/lang/Object;
.source "URLCompleter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static fillWithTokenRelated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "marker"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    .end local p0    # "original":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "original":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    .line 38
    const-string p2, ""

    .line 41
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
