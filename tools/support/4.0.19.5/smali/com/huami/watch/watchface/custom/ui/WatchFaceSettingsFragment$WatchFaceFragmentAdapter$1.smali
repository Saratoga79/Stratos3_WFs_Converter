.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget-object v0, v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "huami.watchface.servicename"

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget-object v1, v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "huami.watchface.customtype"

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget-object v1, v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$900(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "watch_face_res_type"

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget-object v1, v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget-object v0, v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
