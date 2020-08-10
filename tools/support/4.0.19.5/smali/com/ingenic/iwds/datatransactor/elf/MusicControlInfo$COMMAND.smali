.class public final enum Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;
.super Ljava/lang/Enum;
.source "MusicControlInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMMAND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

.field public static final enum NEXT:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

.field public static final enum PAUSE:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

.field public static final enum PREV:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

.field public static final enum START:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->START:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    .line 36
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->PAUSE:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    .line 38
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v4}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->NEXT:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    .line 40
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    const-string v1, "PREV"

    invoke-direct {v0, v1, v5}, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->PREV:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    sget-object v1, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->START:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->PAUSE:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->NEXT:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->PREV:Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->$VALUES:[Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    return-object v0
.end method

.method public static values()[Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->$VALUES:[Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    invoke-virtual {v0}, [Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ingenic/iwds/datatransactor/elf/MusicControlInfo$COMMAND;

    return-object v0
.end method
