.class Lcom/ingenic/iwds/os/SafeParcel$2;
.super Ljava/io/ObjectInputStream;
.source "SafeParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/os/SafeParcel;->b(Ljava/lang/ClassLoader;)Ljava/io/Serializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ClassLoader;

.field final synthetic b:Lcom/ingenic/iwds/os/SafeParcel;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/os/SafeParcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/ingenic/iwds/os/SafeParcel$2;->b:Lcom/ingenic/iwds/os/SafeParcel;

    iput-object p3, p0, Lcom/ingenic/iwds/os/SafeParcel$2;->a:Ljava/lang/ClassLoader;

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .param p1, "osClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/ingenic/iwds/os/SafeParcel$2;->a:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ingenic/iwds/os/SafeParcel$2;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1699
    if-eqz v0, :cond_0

    .line 1703
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
