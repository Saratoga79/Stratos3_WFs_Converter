.class Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftKeyReceiver"
.end annotation


# instance fields
.field mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field mNewEnd:I

.field mNewStart:I


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    invoke-static {p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_0
    return-void
.end method
