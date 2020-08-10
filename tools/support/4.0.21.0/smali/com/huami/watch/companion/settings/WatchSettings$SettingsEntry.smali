.class public Lcom/huami/watch/companion/settings/WatchSettings$SettingsEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/companion/settings/WatchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsEntry"
.end annotation


# static fields
.field public static final COLUMNS_ALL:[Ljava/lang/String;

.field public static final COLUMNS_EMPTY:[Ljava/lang/String;

.field public static final COLUMNS_KEY_VALUE:[Ljava/lang/String;

.field public static final COLUMNS_VALUE:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.huami.watch.companion.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/companion/settings/WatchSettings$SettingsEntry;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/huami/watch/companion/settings/WatchSettings$SettingsEntry;->COLUMNS_EMPTY:[Ljava/lang/String;

    const-string v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/companion/settings/WatchSettings$SettingsEntry;->COLUMNS_VALUE:[Ljava/lang/String;

    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/companion/settings/WatchSettings$SettingsEntry;->COLUMNS_KEY_VALUE:[Ljava/lang/String;

    const-string v0, "key"

    const-string v1, "value"

    const-string v2, "cloud_sync_state"

    const-string v3, "watch_sync_state"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/companion/settings/WatchSettings$SettingsEntry;->COLUMNS_ALL:[Ljava/lang/String;

    return-void
.end method
