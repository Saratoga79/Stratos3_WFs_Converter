.class public Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
.super Ljava/lang/Object;
.source "CalllogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:I

.field private date:J

.field private duration:I

.field private is_read:I

.field private name:Ljava/lang/String;

.field private news:I

.field private number:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->_id:I

    return p1
.end method

.method static synthetic access$102(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->date:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->duration:I

    return p1
.end method

.method static synthetic access$402(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->type:I

    return p1
.end method

.method static synthetic access$502(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->news:I

    return p1
.end method

.method static synthetic access$602(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->is_read:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->date:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->duration:I

    return v0
.end method

.method public getIs_read()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->is_read:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewflag()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->news:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->type:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->_id:I

    return v0
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->date:J

    .line 57
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->duration:I

    .line 65
    return-void
.end method

.method public setIs_read(I)V
    .locals 0
    .param p1, "is_read"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->is_read:I

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->name:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNewflag(I)V
    .locals 0
    .param p1, "news"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->news:I

    .line 81
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->number:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->type:I

    .line 73
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->_id:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calllog info _id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->news:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",is_read:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->is_read:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->news:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CalllogInfo;->is_read:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
