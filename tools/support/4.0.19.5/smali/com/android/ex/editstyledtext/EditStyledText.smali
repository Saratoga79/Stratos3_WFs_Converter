.class public Lcom/android/ex/editstyledtext/EditStyledText;
.super Landroid/widget/EditText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;,
        Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;,
        Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;,
        Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;
    }
.end annotation


# static fields
.field private static final SELECTING:Landroid/text/NoCopySpan$Concrete;

.field private static STR_CLEARSTYLES:Ljava/lang/CharSequence;

.field private static STR_HORIZONTALLINE:Ljava/lang/CharSequence;

.field private static STR_PASTE:Ljava/lang/CharSequence;


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mESTNotifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->SELECTING:Landroid/text/NoCopySpan$Concrete;

    return-void
.end method

.method static synthetic access$1700(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    .locals 0

    iget-object p0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method private notifyStateChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->onStateChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRefreshStyles()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshStyles()V

    return-void
.end method

.method private sendOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->sendOnTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0

    sget-object p0, Lcom/android/ex/editstyledtext/EditStyledText;->SELECTING:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshStyles()V

    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getForegroundColor(I)I
    .locals 2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v1, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ForegroundColorSpan;

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/high16 p1, -0x1000000

    return p1
.end method

.method public getSelectState()I
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    return v0
.end method

.method public isButtonsFocused()Z
    .locals 3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->isButtonsFocused()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEditting()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isEditting()Z

    move-result v0

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    return v0
.end method

.method public isStyledText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isStyledText()Z

    move-result v0

    return v0
.end method

.method public onClearStyles()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onClearStyles()V

    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_HORIZONTALLINE:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0xffff01

    sget-object v3, Lcom/android/ex/editstyledtext/EditStyledText;->STR_HORIZONTALLINE:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isStyledText()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_CLEARSTYLES:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const v1, 0xffff02

    sget-object v3, Lcom/android/ex/editstyledtext/EditStyledText;->STR_CLEARSTYLES:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1020022

    sget-object v3, Lcom/android/ex/editstyledtext/EditStyledText;->STR_PASTE:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    const/16 v0, 0x76

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p1
.end method

.method public onEndEdit()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onFixSelectedItem()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onFixSelectedItem()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isButtonsFocused()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onEndEdit()V

    :cond_1
    return-void
.end method

.method public onInsertHorizontalLine()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundColor(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mBackgroundColor:I

    return-object v0
.end method

.method public onStartCopy()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartCut()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartEdit()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartPaste()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartSelect()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelect(Z)V

    return-void
.end method

.method public onStartSelectAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->updateSpanNextToCursor(Landroid/text/Editable;III)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->updateSpanPreviousFromCursor(Landroid/text/Editable;III)V

    if-le p4, p3, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setTextComposingMask(II)V

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v0

    if-eqz v0, :cond_3

    if-le p4, p3, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onFixSelectedItem()V

    goto :goto_1

    :cond_2
    if-ge p4, p3, :cond_3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onFixSelectedItem()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartSelect()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->blockSoftKey()V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v2

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartPaste()V

    return v2

    :pswitch_3
    if-eqz v0, :cond_1

    :goto_2
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCopy()V

    return v2

    :cond_1
    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p1, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    goto :goto_2

    :pswitch_4
    if-eqz v0, :cond_2

    :goto_3
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCut()V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p1, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartSelectAll()V

    return v2

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onEndEdit()V

    return v2

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    return v2

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onClearStyles()V

    return v2

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onInsertHorizontalLine()V

    return v2

    :pswitch_data_0
    .packed-switch 0xffff01
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x102001f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1020028
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isEditting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectState()I

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->sendOnTouchEvent(Landroid/view/MotionEvent;)V

    return v3
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const v0, 0xffffff

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onRefreshStyles()V

    return-void
.end method
