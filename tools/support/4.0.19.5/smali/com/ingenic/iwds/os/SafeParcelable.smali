.class public interface abstract Lcom/ingenic/iwds/os/SafeParcelable;
.super Ljava/lang/Object;
.source "SafeParcelable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/os/SafeParcelable$ClassLoaderCreator;,
        Lcom/ingenic/iwds/os/SafeParcelable$Creator;
    }
.end annotation


# static fields
.field public static final CONTENTS_FILE_DESCRIPTOR:I = 0x1

.field public static final PARCELABLE_WRITE_RETURN_VALUE:I = 0x1


# virtual methods
.method public abstract describeContents()I
.end method

.method public abstract writeToParcel(Lcom/ingenic/iwds/os/SafeParcel;I)V
.end method
