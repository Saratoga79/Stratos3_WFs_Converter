.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditModeActions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
    }
.end annotation


# instance fields
.field private mActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

.field private mMode:I


# direct methods
.method private getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public doNext(I)Z
    .locals 3

    const-string v0, "EditModeActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- do the next action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "EditModeActions"

    const-string v0, "--- invalid action error."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doSelectionIsFixedAndWaitingInput()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doSelectionIsFixed()Z

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doEndPosIsSelected()Z

    move-result p1

    return p1

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doStartPosIsSelected()Z

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->doNotSelected()Z

    move-result p1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAction(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onAction(I[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->getAction(I)Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;->addParams([Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->mMode:I

    invoke-virtual {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    return-void
.end method

.method public onSelectAction()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    return-void
.end method
