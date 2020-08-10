.class public Lcom/mswiniuch/FiveLines2/data/Time;
.super Ljava/lang/Object;
.source "Time.java"


# instance fields
.field public ampm:I

.field public ampmStr:Ljava/lang/String;

.field private defaultAmPmTranslation:[Ljava/lang/String;

.field public hours:I

.field public minutes:I

.field public seconds:I

.field public secondsStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "am"

    const-string v1, "pm"

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/data/Time;->defaultAmPmTranslation:[Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/mswiniuch/FiveLines2/data/Time;->seconds:I

    .line 19
    iput p2, p0, Lcom/mswiniuch/FiveLines2/data/Time;->minutes:I

    .line 20
    iput p3, p0, Lcom/mswiniuch/FiveLines2/data/Time;->hours:I

    .line 21
    iput p4, p0, Lcom/mswiniuch/FiveLines2/data/Time;->ampm:I

    .line 22
    invoke-virtual {p0, p1}, Lcom/mswiniuch/FiveLines2/data/Time;->getStrSeconds(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/data/Time;->secondsStr:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/data/Time;->defaultAmPmTranslation:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, p4, :cond_0

    if-ltz p4, :cond_0

    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/data/Time;->defaultAmPmTranslation:[Ljava/lang/String;

    aget-object p1, p1, p4

    goto :goto_0

    :cond_0
    const-string p1, "n/a"

    :goto_0
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/data/Time;->ampmStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmpm()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Time;->ampm:I

    return v0
.end method

.method public getAmpmStr(I)Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/data/Time;->defaultAmPmTranslation:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getHours()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Time;->hours:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Time;->minutes:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/Time;->seconds:I

    return v0
.end method

.method public getStrSeconds(I)Ljava/lang/String;
    .locals 3

    const-string v0, "%02d"

    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
