.class public interface abstract Lcom/ingenic/iwds/datatransactor/DataTransactor$ObjectExchangeCallback;
.super Ljava/lang/Object;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ObjectExchangeCallback"
.end annotation


# virtual methods
.method public abstract recv(Lcom/ingenic/iwds/uniconnect/Connection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ingenic/iwds/common/exception/SerializeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Lcom/ingenic/iwds/uniconnect/Connection;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ingenic/iwds/common/exception/SerializeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
