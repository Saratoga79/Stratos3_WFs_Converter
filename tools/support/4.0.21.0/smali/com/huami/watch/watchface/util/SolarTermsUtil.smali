.class public Lcom/huami/watch/watchface/util/SolarTermsUtil;
.super Ljava/lang/Object;


# instance fields
.field private baseChineseDate:I

.field private baseChineseMonth:I

.field private baseChineseYear:I

.field private baseDate:I

.field private baseIndex:I

.field private baseMonth:I

.field private baseYear:I

.field private bigLeapMonthYears:[I

.field private chineseDate:I

.field private chineseMonth:I

.field private chineseMonths:[C

.field private chineseYear:I

.field private daysInGregorianMonth:[C

.field private gregorianDate:I

.field private gregorianMonth:I

.field private gregorianYear:I

.field private principleTerm:I

.field private principleTermMap:[[C

.field private principleTermNames:[Ljava/lang/String;

.field private principleTermYear:[[C

.field private sectionalTerm:I

.field private sectionalTermMap:[[C

.field private sectionalTermNames:[Ljava/lang/String;

.field private sectionalTermYear:[[C


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/VerifyError;

    const-string v0, "bad dex opcode"

    invoke-direct {p1, v0}, Ljava/lang/VerifyError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeChineseFields()I
    .locals 8

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianYear:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x76d

    if-lt v0, v3, :cond_6

    const/16 v3, 0x834

    if-le v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseYear:I

    iget v4, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseMonth:I

    iget v5, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseDate:I

    iget v6, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseChineseYear:I

    iput v6, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseYear:I

    iget v7, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseChineseMonth:I

    iput v7, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonth:I

    iget v7, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseChineseDate:I

    iput v7, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseDate:I

    const/16 v7, 0x7d0

    if-lt v0, v7, :cond_1

    add-int/lit8 v3, v3, 0x63

    add-int/lit8 v6, v6, 0x63

    iput v6, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseYear:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonth:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseDate:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v6, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianYear:I

    if-ge v3, v6, :cond_3

    add-int/lit16 v0, v0, 0x16d

    invoke-direct {p0, v3}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->isGregorianLeapYear(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianMonth:I

    if-ge v4, v3, :cond_4

    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianYear:I

    invoke-direct {p0, v3, v4}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->daysInGregorianMonth(II)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianDate:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v0

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseDate:I

    add-int/2addr v3, v0

    :goto_2
    iput v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseDate:I

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseYear:I

    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonth:I

    invoke-direct {p0, v0, v3}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->daysInChineseMonth(II)I

    move-result v0

    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseYear:I

    iget v4, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonth:I

    invoke-direct {p0, v3, v4}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->nextChineseMonth(II)I

    move-result v3

    iget v4, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseDate:I

    if-le v4, v0, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonth:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    iget v4, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseYear:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseYear:I

    :cond_5
    iput v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonth:I

    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseDate:I

    sub-int/2addr v3, v0

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method private computeSolarTerms()I
    .locals 2

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianYear:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_1

    const/16 v1, 0x834

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianMonth:I

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->sectionalTerm(II)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->sectionalTerm:I

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianYear:I

    iget v1, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianMonth:I

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->principleTerm(II)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->principleTerm:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private daysInChineseMonth(II)I
    .locals 5

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseChineseYear:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseIndex:I

    add-int/2addr p1, v0

    const/16 v0, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v2, p2, :cond_0

    const/16 v3, 0x8

    if-gt p2, v3, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonths:[C

    mul-int/lit8 p1, p1, 0x2

    aget-char p1, v1, p1

    sub-int/2addr p2, v2

    shr-int/2addr p1, p2

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_5

    goto :goto_1

    :cond_0
    const/16 v3, 0x9

    if-gt v3, p2, :cond_1

    const/16 v4, 0xc

    if-gt p2, v4, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonths:[C

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    aget-char p1, v1, p1

    sub-int/2addr p2, v3

    shr-int/2addr p1, p2

    and-int/2addr p1, v2

    if-eq p1, v2, :cond_4

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonths:[C

    mul-int/lit8 v4, p1, 0x2

    add-int/2addr v4, v2

    aget-char v2, v3, v4

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-eq v2, p2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->bigLeapMonthYears:[I

    array-length v2, p2

    if-ge v1, v2, :cond_4

    aget p2, p2, v1

    if-ne p2, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/16 v0, 0x1d

    :cond_5
    :goto_2
    return v0
.end method

.method private daysInGregorianMonth(II)I
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->daysInGregorianMonth:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->isGregorianLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private isGregorianLeapYear(I)Z
    .locals 4

    rem-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    rem-int/lit8 v3, p1, 0x64

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private nextChineseMonth(II)I
    .locals 5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-lez p2, :cond_0

    iget v2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseChineseYear:I

    iget v3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseIndex:I

    iget-object v4, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonths:[C

    sub-int/2addr p1, v2

    add-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    aget-char p1, v4, p1

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    if-ne p1, p2, :cond_0

    neg-int p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/16 p2, 0xd

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private principleTerm(II)I
    .locals 4

    const/16 v0, 0x15

    const/4 v1, 0x0

    const/16 v2, 0x76d

    if-lt p1, v2, :cond_3

    const/16 v2, 0x834

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseYear:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->principleTermYear:[[C

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-char v2, v2, v1

    if-lt p1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->principleTermMap:[[C

    aget-object v2, v2, v3

    mul-int/lit8 v1, v1, 0x4

    rem-int/lit8 v3, p1, 0x4

    add-int/2addr v1, v3

    aget-char v1, v2, v1

    const/16 v2, 0xab

    if-ne p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/16 v1, 0x15

    :cond_2
    const/16 v2, 0xb5

    if-ne p1, v2, :cond_3

    const/4 p1, 0x5

    if-ne p2, p1, :cond_3

    const/16 v1, 0x15

    :cond_3
    :goto_1
    return v1
.end method

.method private sectionalTerm(II)I
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/16 v2, 0x76d

    if-lt p1, v2, :cond_4

    const/16 v2, 0x834

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->baseYear:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->sectionalTermYear:[[C

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-char v2, v2, v1

    if-lt p1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->sectionalTermMap:[[C

    aget-object v2, v2, v3

    const/4 v3, 0x4

    mul-int/lit8 v1, v1, 0x4

    rem-int/lit8 v4, p1, 0x4

    add-int/2addr v1, v4

    aget-char v1, v2, v1

    const/16 v2, 0x79

    const/4 v4, 0x5

    if-ne p1, v2, :cond_2

    if-ne p2, v3, :cond_2

    const/4 v1, 0x5

    :cond_2
    const/16 v2, 0x84

    if-ne p1, v2, :cond_3

    if-ne p2, v3, :cond_3

    const/4 v1, 0x5

    :cond_3
    const/16 v2, 0xc2

    if-ne p1, v2, :cond_4

    if-ne p2, v0, :cond_4

    const/4 v1, 0x6

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public getSolartermsMsg(III)Ljava/lang/String;
    .locals 1

    iput p1, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianYear:I

    const/4 p1, 0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianMonth:I

    iput p3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianDate:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->computeChineseFields()I

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->computeSolarTerms()I

    iget p2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianMonth:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x20

    if-ne p3, p1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget p2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseMonth:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, p1, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iget p2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianDate:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, p1, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    iget p2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->chineseDate:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, p1, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    iget p2, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianDate:I

    iget p3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->sectionalTerm:I

    const-string v0, " "

    if-ne p2, p3, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->sectionalTermNames:[Ljava/lang/String;

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianMonth:I

    sub-int/2addr v0, p1

    aget-object p1, p3, v0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget p3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->principleTerm:I

    if-ne p2, p3, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->principleTermNames:[Ljava/lang/String;

    iget v0, p0, Lcom/huami/watch/watchface/util/SolarTermsUtil;->gregorianMonth:I

    sub-int/2addr v0, p1

    aget-object p1, p3, v0

    goto :goto_0

    :cond_5
    const-string p1, ""

    :goto_1
    return-object p1
.end method
