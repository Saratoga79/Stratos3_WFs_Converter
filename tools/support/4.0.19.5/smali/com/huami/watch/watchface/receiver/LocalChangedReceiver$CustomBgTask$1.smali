.class Lcom/huami/watch/watchface/receiver/LocalChangedReceiver$CustomBgTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/receiver/LocalChangedReceiver$CustomBgTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/receiver/LocalChangedReceiver$CustomBgTask;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/receiver/LocalChangedReceiver$CustomBgTask;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/receiver/LocalChangedReceiver$CustomBgTask$1;->this$1:Lcom/huami/watch/watchface/receiver/LocalChangedReceiver$CustomBgTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, ".wfz"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
