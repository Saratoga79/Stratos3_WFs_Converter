.class final enum Lcom/mswiniuch/FiveLines2/data/DataType$10;
.super Lcom/mswiniuch/FiveLines2/data/DataType;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mswiniuch/FiveLines2/data/DataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mswiniuch/FiveLines2/data/DataType;-><init>(Ljava/lang/String;IILcom/mswiniuch/FiveLines2/data/DataType$1;)V

    return-void
.end method


# virtual methods
.method protected varargs getValue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/WeatherData;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/mswiniuch/FiveLines2/data/WeatherData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
