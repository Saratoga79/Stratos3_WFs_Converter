.class public Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;,
        Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$EmailInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPT_ADD:I = 0x0

.field public static final OPT_DEL:I = 0x2

.field public static final OPT_UPDATE:I = 0x1


# instance fields
.field public email:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$EmailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public operation:I

.field public phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public raw_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->phoneList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->email:Ljava/util/List;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->operation:I

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->raw_id:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->name:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->phoneList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->email:Ljava/util/List;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->operation:I

    .line 131
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->raw_id:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->name:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$EmailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->email:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->phoneList:Ljava/util/List;

    return-object v0
.end method

.method public getRaw_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->raw_id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->operation:I

    return v0
.end method

.method public setEmail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$EmailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "email":Ljava/util/List;, "Ljava/util/List<Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$EmailInfo;>;"
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->email:Ljava/util/List;

    .line 167
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->name:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setPhoneList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/ingenic/iwds/datatransactor/elf/ContactInfo$PhoneInfo;>;"
    iput-object p1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->phoneList:Ljava/util/List;

    .line 177
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "operation"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->operation:I

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->operation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " raw_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->raw_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->phoneList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->email:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->operation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->raw_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->phoneList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/ContactInfo;->email:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 195
    return-void
.end method
