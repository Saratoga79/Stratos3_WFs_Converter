.class public abstract enum Lcom/mswiniuch/FiveLines2/data/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mswiniuch/FiveLines2/data/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum BATTERY:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum CALORIES:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum DATE:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum DISTANCE:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum FLOOR:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum HEART_RATE:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum STEPS:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum TIME:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum TOTAL_DISTANCE:Lcom/mswiniuch/FiveLines2/data/DataType;

.field public static final enum WEATHER:Lcom/mswiniuch/FiveLines2/data/DataType;


# instance fields
.field private final dataType:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 9
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$1;

    const-string v1, "STEPS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mswiniuch/FiveLines2/data/DataType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->STEPS:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 15
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$2;

    const-string v1, "DISTANCE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/mswiniuch/FiveLines2/data/DataType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->DISTANCE:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 21
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$3;

    const-string v1, "TOTAL_DISTANCE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/mswiniuch/FiveLines2/data/DataType$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->TOTAL_DISTANCE:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 27
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$4;

    const-string v1, "CALORIES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/mswiniuch/FiveLines2/data/DataType$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->CALORIES:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 33
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$5;

    const-string v1, "HEART_RATE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/mswiniuch/FiveLines2/data/DataType$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->HEART_RATE:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 39
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$6;

    const-string v1, "DATE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/mswiniuch/FiveLines2/data/DataType$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->DATE:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 45
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$7;

    const-string v1, "TIME"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/mswiniuch/FiveLines2/data/DataType$7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->TIME:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 52
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$8;

    const-string v1, "BATTERY"

    const/16 v10, 0xa

    invoke-direct {v0, v1, v9, v10}, Lcom/mswiniuch/FiveLines2/data/DataType$8;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->BATTERY:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 59
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$9;

    const-string v1, "FLOOR"

    const/16 v11, 0x8

    const/16 v12, 0xc

    invoke-direct {v0, v1, v11, v12}, Lcom/mswiniuch/FiveLines2/data/DataType$9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->FLOOR:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 67
    new-instance v0, Lcom/mswiniuch/FiveLines2/data/DataType$10;

    const-string v1, "WEATHER"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v11}, Lcom/mswiniuch/FiveLines2/data/DataType$10;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->WEATHER:Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 7
    new-array v0, v10, [Lcom/mswiniuch/FiveLines2/data/DataType;

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->STEPS:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->DISTANCE:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->TOTAL_DISTANCE:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->CALORIES:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->HEART_RATE:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->DATE:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->TIME:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->BATTERY:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->FLOOR:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/mswiniuch/FiveLines2/data/DataType;->WEATHER:Lcom/mswiniuch/FiveLines2/data/DataType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->$VALUES:[Lcom/mswiniuch/FiveLines2/data/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/mswiniuch/FiveLines2/data/DataType;->dataType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/mswiniuch/FiveLines2/data/DataType$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/mswiniuch/FiveLines2/data/DataType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static final fromValue(I)Lcom/mswiniuch/FiveLines2/data/DataType;
    .locals 6

    .line 87
    invoke-static {}, Lcom/mswiniuch/FiveLines2/data/DataType;->values()[Lcom/mswiniuch/FiveLines2/data/DataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 88
    iget v5, v4, Lcom/mswiniuch/FiveLines2/data/DataType;->dataType:I

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type %s not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mswiniuch/FiveLines2/data/DataType;
    .locals 1

    .line 7
    const-class v0, Lcom/mswiniuch/FiveLines2/data/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mswiniuch/FiveLines2/data/DataType;

    return-object p0
.end method

.method public static values()[Lcom/mswiniuch/FiveLines2/data/DataType;
    .locals 1

    .line 7
    sget-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->$VALUES:[Lcom/mswiniuch/FiveLines2/data/DataType;

    invoke-virtual {v0}, [Lcom/mswiniuch/FiveLines2/data/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mswiniuch/FiveLines2/data/DataType;

    return-object v0
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/mswiniuch/FiveLines2/data/DataType;->dataType:I

    return v0
.end method

.method protected varargs abstract getValue([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation
.end method
