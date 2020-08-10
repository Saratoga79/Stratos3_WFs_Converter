.class public Lcom/ingenic/iwds/HardwareList;
.super Ljava/lang/Object;
.source "HardwareList.java"


# static fields
.field public static final KEY_BLUETOOTH_CHIP:Ljava/lang/String; = "bluetooth.chip"

.field public static final KEY_LCD_DPI:Ljava/lang/String; = "lcd.dpi"

.field public static final KEY_LCD_EXTERIOR:Ljava/lang/String; = "lcd.exterior"

.field public static final KEY_LCD_PPI:Ljava/lang/String; = "lcd.ppi"

.field public static final KEY_LCD_SIZE:Ljava/lang/String; = "lcd.size"

.field public static final VALUE_LCD_EXTERIOR_ROUND:Ljava/lang/String; = "round"

.field public static final VALUE_LCD_EXTERIOR_SQUARE:Ljava/lang/String; = "square"

.field private static a:Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    const-string v0, "HardwareList: "

    sput-object v0, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "bluetooth.chip"

    aput-object v4, v0, v3

    const-string v4, "lcd.exterior"

    aput-object v4, v0, v2

    const-string v4, "lcd.dpi"

    aput-object v4, v0, v9

    const/4 v4, 0x3

    const-string v5, "lcd.ppi"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "lcd.size"

    aput-object v5, v0, v4

    sput-object v0, Lcom/ingenic/iwds/HardwareList;->b:[Ljava/lang/String;

    .line 67
    sput-object v1, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    .line 72
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    .line 75
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/hardware/list"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 79
    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 81
    const-string v6, "HardwareList"

    if-eqz v5, :cond_1

    array-length v1, v5

    if-ge v1, v9, :cond_3

    :cond_1
    move v1, v2

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 85
    const/4 v1, 0x1

    aget-object v1, v5, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 88
    sget-object v6, Lcom/ingenic/iwds/HardwareList;->b:[Ljava/lang/String;

    array-length v7, v6

    move v1, v3

    :goto_2
    if-ge v1, v7, :cond_8

    aget-object v8, v6, v1

    .line 89
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v1, v2

    .line 95
    :goto_3
    if-eqz v1, :cond_0

    .line 98
    const-string v6, "HardwareList"

    sget-object v1, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    .line 99
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dunplicate Key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {v6, v1, v7}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 102
    sget-object v1, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    :goto_5
    :try_start_2
    sget-object v1, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    const-string v2, "Exception occurred trying to open /proc/hardware/list"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    sput-object v1, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    if-eqz v0, :cond_2

    .line 113
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    :cond_2
    :goto_6
    return-void

    :cond_3
    move v1, v3

    .line 81
    goto :goto_1

    .line 88
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v3

    .line 99
    goto :goto_4

    .line 111
    :cond_6
    if-eqz v0, :cond_2

    .line 113
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 114
    :catch_1
    move-exception v0

    .line 115
    sget-object v0, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    const-string v1, "Exception occurred trying to close /proc/hardware/list"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 114
    :catch_2
    move-exception v0

    .line 115
    sget-object v0, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    const-string v1, "Exception occurred trying to close /proc/hardware/list"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 107
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 108
    :goto_7
    :try_start_5
    sget-object v1, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    const-string v2, "Exception occurred trying to read /proc/hardware/list"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    sput-object v1, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    if-eqz v0, :cond_2

    .line 113
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    .line 114
    :catch_4
    move-exception v0

    .line 115
    sget-object v0, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    const-string v1, "Exception occurred trying to close /proc/hardware/list"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 111
    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v1, :cond_7

    .line 113
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 117
    :cond_7
    :goto_9
    throw v0

    .line 114
    :catch_5
    move-exception v1

    .line 115
    sget-object v1, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    const-string v2, "Exception occurred trying to close /proc/hardware/list"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 111
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    .line 107
    :catch_6
    move-exception v1

    goto :goto_7

    .line 104
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :cond_8
    move v1, v3

    goto/16 :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static Dump()V
    .locals 4

    .prologue
    .line 161
    const-string v0, "Hashtable: "

    .line 163
    sget-object v1, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v1, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    move-object v1, v0

    .line 168
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 171
    goto :goto_1

    .line 173
    :cond_1
    sget-object v0, Lcom/ingenic/iwds/HardwareList;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static IsCircularScreen()Z
    .locals 2

    .prologue
    .line 140
    const-string v0, "lcd.exterior"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/HardwareList;->getHardwareValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsSquareScreen()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "lcd.exterior"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/HardwareList;->getHardwareValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "square"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getHardwareValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v1, Lcom/ingenic/iwds/HardwareList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 135
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/ingenic/iwds/HardwareList;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getHardwareValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defs"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v1, Lcom/ingenic/iwds/HardwareList;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/ingenic/iwds/HardwareList;->getHardwareValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 129
    .end local p1    # "defs":Ljava/lang/String;
    :goto_0
    monitor-exit v1

    return-object p1

    .restart local p1    # "defs":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
