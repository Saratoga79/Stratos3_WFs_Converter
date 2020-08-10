.class public Lcom/mswiniuch/FiveLines2/settings/Settings;
.super Landroid/support/v4/app/FragmentActivity;
.source "Settings.java"


# static fields
.field public static codes:[Ljava/lang/String;


# instance fields
.field public currentColor:I

.field public currentLanguage:I

.field private settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "English"

    const-string v1, "\u010ce\u0161tina"

    const-string v2, "Deutsch"

    const-string v3, "Espa\u00f1ol"

    const-string v4, "Fran\u00e7ais"

    const-string v5, "Hrvatski"

    const-string v6, "Italian"

    const-string v7, "Magyar"

    const-string v8, "Polski"

    const-string v9, "Portugu\u00eas"

    const-string v10, "Sloven\u010dina"

    const-string v11, "T\u00fcrk\u00e7e"

    .line 22
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mswiniuch/FiveLines2/settings/Settings;->codes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x3

    .line 18
    iput v0, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentColor:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    return-void
.end method

.method static synthetic access$000(Lcom/mswiniuch/FiveLines2/settings/Settings;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mswiniuch/FiveLines2/settings/Settings;->change_watchface()V

    return-void
.end method

.method static synthetic access$100(Lcom/mswiniuch/FiveLines2/settings/Settings;Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/mswiniuch/FiveLines2/settings/Settings;->rotateLanguage(Landroid/view/View;)V

    return-void
.end method

.method private change_watchface()V
    .locals 2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huami.intent.action.WATCHFACE_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mswiniuch/FiveLines2/settings/Settings;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, -0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/mswiniuch/FiveLines2/settings/Settings;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/settings/Settings;->finish()V

    return-void
.end method

.method private rotateLanguage(Landroid/view/View;)V
    .locals 2

    .line 69
    iget v0, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/mswiniuch/FiveLines2/settings/Settings;->codes:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    const v0, 0x7f070029

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lcom/mswiniuch/FiveLines2/settings/Settings;->codes:[Ljava/lang/String;

    iget v1, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const-string v0, "lang"

    iget v1, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    invoke-virtual {p1, v0, v1}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->set(Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090017

    .line 30
    invoke-virtual {p0, p1}, Lcom/mswiniuch/FiveLines2/settings/Settings;->setContentView(I)V

    .line 33
    new-instance p1, Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const-class v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/mswiniuch/FiveLines2/settings/APsettings;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const/high16 p1, 0x7f070000

    .line 36
    invoke-virtual {p0, p1}, Lcom/mswiniuch/FiveLines2/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 37
    new-instance v0, Lcom/mswiniuch/FiveLines2/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/mswiniuch/FiveLines2/settings/Settings$1;-><init>(Lcom/mswiniuch/FiveLines2/settings/Settings;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070015

    .line 45
    invoke-virtual {p0, p1}, Lcom/mswiniuch/FiveLines2/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 46
    new-instance v0, Lcom/mswiniuch/FiveLines2/settings/Settings$2;

    invoke-direct {v0, p0}, Lcom/mswiniuch/FiveLines2/settings/Settings$2;-><init>(Lcom/mswiniuch/FiveLines2/settings/Settings;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070029

    .line 55
    invoke-virtual {p0, p1}, Lcom/mswiniuch/FiveLines2/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    new-instance v1, Lcom/mswiniuch/FiveLines2/settings/Settings$3;

    invoke-direct {v1, p0}, Lcom/mswiniuch/FiveLines2/settings/Settings$3;-><init>(Lcom/mswiniuch/FiveLines2/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const-string v1, "lang"

    iget v2, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    invoke-virtual {v0, v1, v2}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->get(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/mswiniuch/FiveLines2/settings/Settings;->codes:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    .line 64
    invoke-virtual {p0, p1}, Lcom/mswiniuch/FiveLines2/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lcom/mswiniuch/FiveLines2/settings/Settings;->codes:[Ljava/lang/String;

    iget v1, p0, Lcom/mswiniuch/FiveLines2/settings/Settings;->currentLanguage:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
