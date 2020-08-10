.class Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# instance fields
.field private mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

.field private mBackgroundColor:I

.field private mColorWaitInput:I

.field private mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

.field private mCopyBuffer:Landroid/text/SpannableStringBuilder;

.field private mCurEnd:I

.field private mCurStart:I

.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mEditFlag:Z

.field private mKeepNonLineSpan:Z

.field private mMode:I

.field private mSizeWaitInput:I

.field private mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

.field private mSoftKeyBlockFlag:Z

.field private mState:I

.field private mTextIsFinishedFlag:Z

.field private mWaitInputFlag:Z

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method private endEdit()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- handleCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    const v1, 0xffffff

    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unblockSoftKey()V

    return-void
.end method

.method private findLineEnd(Landroid/text/Editable;I)I
    .locals 4

    move v0, p2

    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private findLineStart(Landroid/text/Editable;I)I
    .locals 4

    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private fixSelectionAndDoNextAction()V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- handleComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_1

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- cancel handle complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    :cond_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method private handleSelectAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    return-void
.end method

.method private removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const-class v1, Landroid/text/style/DynamicDrawableSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/DynamicDrawableSpan;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const-string v5, ""

    invoke-virtual {v0, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private resetEdit()V
    .locals 3

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->endEdit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    return-void
.end method

.method private unsetSelect()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- offSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return-void
.end method


# virtual methods
.method public blockSoftKey()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- blockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hideSoftKey()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return-void
.end method

.method public canPaste()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    return v0
.end method

.method public getSelectState()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return v0
.end method

.method public hideSoftKey()V
    .locals 4

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- hidesoftkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    return-void
.end method

.method public isEditting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return v0
.end method

.method public isStyledText()Z
    .locals 4

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ParagraphStyle;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    array-length v2, v2

    if-gtz v2, :cond_0

    const-class v2, Landroid/text/style/QuoteSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    array-length v2, v2

    if-gtz v2, :cond_0

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v0, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    const v1, 0xffffff

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public isWaitInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    return v0
.end method

.method public onAction(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(IZ)V

    return-void
.end method

.method public onAction(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {p1, p2, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_0
    return-void
.end method

.method public onClearStyles()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    return-void
.end method

.method public onCursorMoved()V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_1
    return-void
.end method

.method public onFixSelectedItem()V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onFixSelectedItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->fixSelectionAndDoNextAction()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    return-void
.end method

.method public onRefreshStyles()V
    .locals 8

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onRefreshStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v2

    const-class v3, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {v7, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->resetWidth(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-class v2, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    invoke-interface {v0, v4, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    array-length v2, v1

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->resetColor(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    array-length v1, v3

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v4, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    return-void
.end method

.method public onStartSelect(Z)V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {p1, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_1
    return-void
.end method

.method public onStartSelectAll(Z)V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->handleSelectAll()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {p1, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    return-void
.end method

.method public setTextComposingMask(II)V
    .locals 5

    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setTextComposingMask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    const v1, 0xffffff

    if-eq p2, v1, :cond_0

    iget p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {p2, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getForegroundColor(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v1

    const-string v2, "EditStyledText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- fg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",bg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v1, :cond_3

    const/high16 p2, -0x80000000

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    not-int v1, v1

    or-int/2addr p2, v1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v1}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v1

    if-eq v1, p2, :cond_2

    :cond_1
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    :cond_2
    iget-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {p2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object p2

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    const/16 v2, 0x21

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-void
.end method

.method public showSoftKey(II)V
    .locals 4

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- showsoftkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public unblockSoftKey()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- unblockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return-void
.end method

.method public unsetTextComposingMask()V
    .locals 2

    const-string v0, "EditStyledText"

    const-string v1, "--- unsetTextComposingMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    :cond_0
    return-void
.end method

.method public updateSpanNextToCursor(Landroid/text/Editable;III)V
    .locals 11

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v0, p2, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, p2, p2, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, p2, v3

    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v5, :cond_1

    instance-of v6, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v5, :cond_5

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v0, :cond_5

    if-lez v0, :cond_5

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    const-string v5, "\n"

    invoke-interface {v4, v0, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    goto :goto_4

    :cond_1
    :goto_1
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const-string v8, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spantype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_3

    instance-of v5, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v5

    :goto_3
    if-ge v5, v6, :cond_4

    if-le p3, p4, :cond_4

    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    if-le v6, v1, :cond_5

    const/16 v5, 0x21

    invoke-interface {p1, v4, v1, v7, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public updateSpanPreviousFromCursor(Landroid/text/Editable;III)V
    .locals 10

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanPrevious:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v0, p2, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    instance-of v5, v4, Landroid/text/style/ForegroundColorSpan;

    if-nez v5, :cond_2

    instance-of v5, v4, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v5, :cond_2

    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v5, :cond_2

    instance-of v5, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v5, :cond_6

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-le p3, p4, :cond_1

    const-string v7, ""

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    if-ne v6, v0, :cond_6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    const-string v5, "\n"

    invoke-interface {v4, v0, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4

    :cond_2
    :goto_1
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "EditStyledText.EditorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spantype:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v7, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v7, :cond_5

    instance-of v7, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_3

    :cond_4
    move v7, p2

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_6

    const-string v6, "EditStyledText.EditorManager"

    const-string v8, "updateSpanPrevious: extend span"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x21

    invoke-interface {p1, v4, v5, v7, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
