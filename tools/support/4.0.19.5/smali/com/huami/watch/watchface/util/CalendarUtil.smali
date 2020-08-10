.class public Lcom/huami/watch/watchface/util/CalendarUtil;
.super Ljava/lang/Object;


# instance fields
.field private final LUNAR_INFO:[J

.field private baseDate:Ljava/util/Date;

.field private chineseMonthNumberStringArray:[Ljava/lang/String;

.field private chineseNumberStringArray:[Ljava/lang/String;

.field private isLoap:Z

.field private leafString:Ljava/lang/String;

.field private final mCurrenCalendar:Ljava/util/Calendar;

.field private mHolidayJSONObject:Lorg/json/JSONObject;

.field private mLuchDay:I

.field private mLuchMonth:I

.field private mLuchYear:I

.field private mResources:Landroid/content/res/Resources;

.field private final mSolarTermsUtil:Lcom/huami/watch/watchface/util/SolarTermsUtil;

.field private monthString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->baseDate:Ljava/util/Date;

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->LUNAR_INFO:[J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mCurrenCalendar:Ljava/util/Calendar;

    iput-object p1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/huami/watch/watchface/util/SolarTermsUtil;

    invoke-direct {v0, p1}, Lcom/huami/watch/watchface/util/SolarTermsUtil;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mSolarTermsUtil:Lcom/huami/watch/watchface/util/SolarTermsUtil;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/util/CalendarUtil;->getHolidayJson(Landroid/content/res/Resources;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f07002e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0b0003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->chineseNumberStringArray:[Ljava/lang/String;

    const v1, 0x7f0b0004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->chineseMonthNumberStringArray:[Ljava/lang/String;

    const v1, 0x7f07002d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->leafString:Ljava/lang/String;

    const v1, 0x7f07002c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->monthString:Ljava/lang/String;

    const v1, 0x7f07002f

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->baseDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method private getChinaDayString(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    :goto_0
    const/16 v3, 0x1e

    if-le p1, v3, :cond_1

    const-string p1, ""

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->chineseNumberStringArray:[Ljava/lang/String;

    div-int/2addr p1, v4

    sub-int/2addr p1, v3

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, v3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p1, v4

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->chineseNumberStringArray:[Ljava/lang/String;

    aget-object p1, p1, v2

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private getHolidayJson(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "holiday.json"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iput-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mHolidayJSONObject:Lorg/json/JSONObject;

    return-void
.end method

.method private getLunarHoliday()Ljava/lang/String;
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchMonth:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "0"

    const/16 v2, 0xa

    const-string v3, ""

    if-ge v0, v2, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchMonth:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchMonth:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchDay:I

    if-ge v4, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchDay:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mHolidayJSONObject:Lorg/json/JSONObject;

    const-string v5, "lunarHoliday"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchMonth:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    iget v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchYear:I

    invoke-direct {p0, v2, v1}, Lcom/huami/watch/watchface/util/CalendarUtil;->monthDays(II)I

    move-result v1

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchDay:I

    if-eq v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchYear:I

    iget v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchMonth:I

    invoke-direct {p0, v1, v2}, Lcom/huami/watch/watchface/util/CalendarUtil;->monthDays(II)I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchDay:I

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private getSolarHoliday(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v4, 0x7

    invoke-virtual {p1, v2, v4}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {p1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    const-string p1, "0"

    const/16 v0, 0xa

    const-string v2, ""

    if-ge v1, v0, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    if-ge v3, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mHolidayJSONObject:Lorg/json/JSONObject;

    const-string v4, "solarHoliday"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method

.method private leapDays(I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/util/CalendarUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->LUNAR_INFO:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v1, v0, p1

    const-wide/32 v3, 0x10000

    and-long v0, v1, v3

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    const/16 p1, 0x1d

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private leapMonth(I)I
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->LUNAR_INFO:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v1, v0, p1

    const-wide/16 v3, 0xf

    and-long v0, v1, v3

    long-to-int p1, v0

    return p1
.end method

.method private monthDays(II)I
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->LUNAR_INFO:[J

    add-int/lit16 p1, p1, -0x76c

    aget-wide v1, v0, p1

    const/high16 p1, 0x10000

    shr-int/2addr p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x1d

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e

    :goto_0
    return p1
.end method

.method private yearDays(I)I
    .locals 7

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    iget-object v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->LUNAR_INFO:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v3, v2, v3

    int-to-long v5, v1

    and-long v2, v3, v5

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/util/CalendarUtil;->leapDays(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public getHolidayString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mCurrenCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mCurrenCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->baseDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    const/16 v2, 0x76c

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x802

    if-ge v2, v4, :cond_0

    if-lez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/huami/watch/watchface/util/CalendarUtil;->yearDays(I)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    :cond_1
    iput v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchYear:I

    invoke-direct {p0, v2}, Lcom/huami/watch/watchface/util/CalendarUtil;->leapMonth(I)I

    move-result v2

    iput-boolean v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    const/4 v3, 0x1

    move v4, v1

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xd

    if-ge v1, v6, :cond_4

    if-lez v4, :cond_4

    if-lez v2, :cond_2

    add-int/lit8 v5, v2, 0x1

    if-ne v1, v5, :cond_2

    iget-boolean v5, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    if-nez v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput-boolean v3, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    iget v5, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchYear:I

    invoke-direct {p0, v5}, Lcom/huami/watch/watchface/util/CalendarUtil;->leapDays(I)I

    move-result v5

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchYear:I

    invoke-direct {p0, v5, v1}, Lcom/huami/watch/watchface/util/CalendarUtil;->monthDays(II)I

    move-result v5

    :goto_2
    sub-int/2addr v4, v5

    iget-boolean v6, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    if-eqz v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    if-ne v1, v6, :cond_3

    iput-boolean v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_6

    if-lez v2, :cond_6

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    iget-boolean v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    if-eqz v2, :cond_5

    iput-boolean v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    goto :goto_3

    :cond_5
    iput-boolean v3, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    add-int/lit8 v1, v1, -0x1

    :cond_6
    :goto_3
    if-gez v4, :cond_7

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, -0x1

    :cond_7
    iput v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchMonth:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchDay:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/CalendarUtil;->getLunarHoliday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mSolarTermsUtil:Lcom/huami/watch/watchface/util/SolarTermsUtil;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mCurrenCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mCurrenCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mCurrenCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/huami/watch/watchface/util/SolarTermsUtil;->getSolartermsMsg(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mCurrenCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/util/CalendarUtil;->getSolarHoliday(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->isLoap:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->leafString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->chineseMonthNumberStringArray:[Ljava/lang/String;

    iget v2, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchMonth:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->monthString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    iget v1, p0, Lcom/huami/watch/watchface/util/CalendarUtil;->mLuchDay:I

    invoke-direct {p0, v1}, Lcom/huami/watch/watchface/util/CalendarUtil;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_5
    return-object v0
.end method
