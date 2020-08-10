.class public Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
.super Ljava/lang/Object;
.source "SmsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private date:J

.field private id:I

.field private person:Ljava/lang/String;

.field private protocol:I

.field private read:I

.field private thread_id:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->id:I

    return p1
.end method

.method static synthetic access$102(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->thread_id:I

    return p1
.end method

.method static synthetic access$202(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->person:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->body:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->date:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->read:I

    return p1
.end method

.method static synthetic access$702(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->protocol:I

    return p1
.end method

.method static synthetic access$802(Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->type:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->date:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->id:I

    return v0
.end method

.method public getPerson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->person:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->protocol:I

    return v0
.end method

.method public getRead()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->read:I

    return v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->thread_id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->type:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->address:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->body:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->date:J

    .line 201
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->id:I

    .line 55
    return-void
.end method

.method public setPerson(Ljava/lang/String;)V
    .locals 0
    .param p1, "person"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->person:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setProtocol(I)V
    .locals 0
    .param p1, "protocol"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->protocol:I

    .line 183
    return-void
.end method

.method public setRead(I)V
    .locals 0
    .param p1, "read"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->read:I

    .line 165
    return-void
.end method

.method public setThreadId(I)V
    .locals 0
    .param p1, "thread_id"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->thread_id:I

    .line 75
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->type:I

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sms:id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",thread_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->thread_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",person:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->person:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",read:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->read:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->type:I

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
    .line 216
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->thread_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->person:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-wide v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->read:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/SmsInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    return-void
.end method
