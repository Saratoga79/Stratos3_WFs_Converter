.class public interface abstract Lcom/ingenic/iwds/app/INotificationServiceBackend;
.super Ljava/lang/Object;
.source "INotificationServiceBackend.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/app/INotificationServiceBackend$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCancelAllNotification(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCancelNotification(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHandleNotification(Ljava/lang/String;ILcom/ingenic/iwds/app/Note;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
