.class public Lcom/sphericbox/syb/browse/SettingsActivity;
.super Lcom/sphericbox/syb/ui/ActionActivity;
.source "SourceFile"


# instance fields
.field private am:Lcom/sphericbox/syb/processing/ProcessingConfig;

.field private an:Landroid/widget/CheckBox;

.field private ao:Landroid/widget/CheckBox;

.field private ap:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sphericbox/syb/ui/ActionActivity;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/sphericbox/syb/browse/SettingsActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->an:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/sphericbox/syb/browse/SettingsActivity;)Lcom/sphericbox/syb/processing/ProcessingConfig;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;

    return-object v0
.end method

.method static synthetic c(Lcom/sphericbox/syb/browse/SettingsActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ao:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/sphericbox/syb/browse/SettingsActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ap:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->setContentView(I)V

    .line 29
    new-instance v0, Lcom/sphericbox/syb/processing/ProcessingConfig;

    invoke-direct {v0, p0}, Lcom/sphericbox/syb/processing/ProcessingConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;

    .line 31
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->an:Landroid/widget/CheckBox;

    .line 32
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->an:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;

    invoke-virtual {v1}, Lcom/sphericbox/syb/processing/ProcessingConfig;->isAutoContrastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 33
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->an:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sphericbox/syb/browse/g;

    invoke-direct {v1, p0, v2}, Lcom/sphericbox/syb/browse/g;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ao:Landroid/widget/CheckBox;

    .line 36
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ao:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;

    invoke-virtual {v1}, Lcom/sphericbox/syb/processing/ProcessingConfig;->isEdgesGeometryEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ao:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sphericbox/syb/browse/a;

    invoke-direct {v1, p0, v2}, Lcom/sphericbox/syb/browse/a;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ap:Landroid/widget/CheckBox;

    .line 40
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ap:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;

    invoke-virtual {v1}, Lcom/sphericbox/syb/processing/ProcessingConfig;->isEnhaceEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/sphericbox/syb/browse/SettingsActivity;->ap:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sphericbox/syb/browse/n;

    invoke-direct {v1, p0, v2}, Lcom/sphericbox/syb/browse/n;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    new-instance v1, Lcom/sphericbox/syb/browse/c;

    invoke-direct {v1, p0, v2}, Lcom/sphericbox/syb/browse/c;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    new-instance v1, Lcom/sphericbox/syb/browse/k;

    invoke-direct {v1, p0, v2}, Lcom/sphericbox/syb/browse/k;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    new-instance v1, Lcom/sphericbox/syb/ui/a;

    new-instance v2, Lcom/sphericbox/syb/b/c;

    invoke-direct {v2, p0}, Lcom/sphericbox/syb/b/c;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;)V

    invoke-direct {v1, v2}, Lcom/sphericbox/syb/ui/a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
