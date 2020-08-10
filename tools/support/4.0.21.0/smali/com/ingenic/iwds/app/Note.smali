.class public Lcom/ingenic/iwds/app/Note;
.super Ljava/lang/Object;
.source "Note.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/app/Note;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public content:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/ingenic/iwds/app/Note$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/app/Note$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/app/Note;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/app/Note$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/app/Note$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ingenic/iwds/app/Note;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "Content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Title is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 34
    if-nez p2, :cond_1

    :goto_1
    const-string v0, "Content is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v1, v2

    .line 34
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "Title"    # Ljava/lang/String;
    .param p2, "Content"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/app/Note;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p3, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    if-ne p0, p1, :cond_1

    .line 151
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 131
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    check-cast p1, Lcom/ingenic/iwds/app/Note;

    .line 136
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 137
    iget-object v2, p1, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 138
    goto :goto_0

    .line 139
    :cond_4
    iget-object v2, p0, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 140
    goto :goto_0

    .line 141
    :cond_5
    iget-object v2, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_6

    .line 142
    iget-object v2, p1, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_7

    move v0, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_7
    iget-object v2, p0, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 147
    iget-object v2, p1, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 148
    goto :goto_0

    .line 149
    :cond_8
    iget-object v2, p0, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 120
    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 121
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    move v0, v1

    .line 122
    :goto_1
    add-int/2addr v0, v2

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 124
    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    .line 122
    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    goto :goto_1

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Note [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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
    .line 78
    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Lcom/ingenic/iwds/app/Note;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
