.class public Ledu/umich/PowerTutor/ui/PowerTabs;
.super Landroid/app/TabActivity;
.source "PowerTabs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Ledu/umich/PowerTutor/ui/PowerTabs;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTabs;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    .line 41
    .local v3, tabHost:Landroid/widget/TabHost;
    new-instance v0, Landroid/content/Intent;

    const-class v4, Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTabs;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 43
    const-string v4, "Charts"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const-string v5, "Chart View"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 44
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 45
    .local v2, spec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v4, Ledu/umich/PowerTutor/ui/PowerPie;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTabs;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 50
    const-string v4, "Pie"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const-string v5, "Pie View"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 51
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 52
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v4, Ledu/umich/PowerTutor/ui/MiscView;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerTabs;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 56
    const-string v4, "Stat"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const-string v5, "Stat View"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 57
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 58
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 61
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 62
    return-void
.end method
