.class public Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;
.super Ljava/lang/Object;
.source "URLCompleter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLSeat"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "[=>..^$^S]"

.field public static final PROVIDER:Ljava/lang/String;

.field private static final SUFFIX:Ljava/lang/String; = "[E*$*..<=]"

.field public static final TOKEN:Ljava/lang/String;

.field public static final USER_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "UID"

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;->WRAP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;->USER_ID:Ljava/lang/String;

    .line 23
    const-string v0, "PRD"

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;->WRAP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;->PROVIDER:Ljava/lang/String;

    .line 28
    const-string v0, "TK"

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;->WRAP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/URLCompleter$URLSeat;->TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WRAP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[=>..^$^S]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[E*$*..<=]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
