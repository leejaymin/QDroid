.class public Lexam/activity/TabTest2;
.super Landroid/app/TabActivity;
.source "TabTest2.java"


# instance fields
.field factory:Lexam/activity/TabFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v2, Lexam/activity/TabFactory;

    invoke-direct {v2, p0}, Lexam/activity/TabFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lexam/activity/TabTest2;->factory:Lexam/activity/TabFactory;

    .line 19
    invoke-virtual {p0}, Lexam/activity/TabTest2;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 21
    .local v1, tabHost:Landroid/widget/TabHost;
    invoke-virtual {p0}, Lexam/activity/TabTest2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const-string v2, "General"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 23
    const-string v3, "\uc77c\ubc18"

    invoke-virtual {v2, v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lexam/activity/TabTest2;->factory:Lexam/activity/TabFactory;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 25
    const-string v2, "Compiler"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 26
    const-string v3, "\ucef4\ud30c\uc77c\ub7ec"

    invoke-virtual {v2, v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 27
    iget-object v3, p0, Lexam/activity/TabTest2;->factory:Lexam/activity/TabFactory;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 28
    const-string v2, "Linker"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 29
    const-string v3, "\ub9c1\ucee4"

    invoke-virtual {v2, v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 30
    iget-object v3, p0, Lexam/activity/TabTest2;->factory:Lexam/activity/TabFactory;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 31
    return-void
.end method
