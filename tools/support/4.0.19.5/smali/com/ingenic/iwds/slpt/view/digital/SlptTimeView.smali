.class public Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptNumView;
.source "SlptTimeView.java"


# static fields
.field public static final digital_nums:[Ljava/lang/String;

.field public static final week_nums:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->digital_nums:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sun"

    aput-object v1, v0, v3

    const-string v1, "Mon"

    aput-object v1, v0, v4

    const-string v1, "Tues"

    aput-object v1, v0, v5

    const-string v1, "Wed"

    aput-object v1, v0, v6

    const-string v1, "Thur"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->week_nums:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;-><init>()V

    .line 39
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->setDefaultString()V

    .line 40
    return-void
.end method

.method private setDefaultString()V
    .locals 2

    .prologue
    .line 32
    iget-short v0, p0, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->type:S

    sget-short v1, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->SVIEW_WEEK:S

    if-eq v0, v1, :cond_0

    .line 33
    sget-object v0, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->digital_nums:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->setStringPictureArray([Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->week_nums:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->setStringPictureArray([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 44
    sget-short v0, Lcom/ingenic/iwds/slpt/view/digital/SlptTimeView;->SVIEW_TIME_NUM:S

    return v0
.end method
