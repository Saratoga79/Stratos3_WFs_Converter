.class public interface abstract Lcom/ingenic/iwds/os/SafeParcelable$ClassLoaderCreator;
.super Ljava/lang/Object;
.source "SafeParcelable.java"

# interfaces
.implements Lcom/ingenic/iwds/os/SafeParcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/os/SafeParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassLoaderCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract createFromParcel(Lcom/ingenic/iwds/os/SafeParcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ingenic/iwds/os/SafeParcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation
.end method
