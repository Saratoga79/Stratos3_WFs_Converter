.class public Lcom/huami/watch/transport/AndroidListenerTest$SendData;
.super Ljava/lang/Object;
.source "AndroidListenerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/AndroidListenerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendData"
.end annotation


# instance fields
.field public data:[B

.field final synthetic this$0:Lcom/huami/watch/transport/AndroidListenerTest;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huami/watch/transport/AndroidListenerTest;Ljava/lang/String;[B)V
    .locals 0
    .param p2, "fullid"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huami/watch/transport/AndroidListenerTest$SendData;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/huami/watch/transport/AndroidListenerTest$SendData;->uuid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/huami/watch/transport/AndroidListenerTest$SendData;->data:[B

    .line 27
    return-void
.end method
