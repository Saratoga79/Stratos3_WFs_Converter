.class Lcom/mswiniuch/FiveLines2/settings/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mswiniuch/FiveLines2/settings/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mswiniuch/FiveLines2/settings/Settings;


# direct methods
.method constructor <init>(Lcom/mswiniuch/FiveLines2/settings/Settings;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/settings/Settings$3;->this$0:Lcom/mswiniuch/FiveLines2/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/Settings$3;->this$0:Lcom/mswiniuch/FiveLines2/settings/Settings;

    invoke-static {v0, p1}, Lcom/mswiniuch/FiveLines2/settings/Settings;->access$100(Lcom/mswiniuch/FiveLines2/settings/Settings;Landroid/view/View;)V

    return-void
.end method
