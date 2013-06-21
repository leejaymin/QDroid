.class public Lcom/mattcarver/clicker/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field private cbHaptic:Landroid/widget/CheckBox;

.field private cbRotate:Landroid/widget/CheckBox;

.field private sHaptic:Ljava/lang/Boolean;

.field private sRotate:Ljava/lang/Boolean;

.field private sSounds:I

.field private spSounds:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getClickerPrefs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const-string v1, "clicker_prefs.dat"

    invoke-virtual {p0, v1, v2}, Lcom/mattcarver/clicker/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "SOUND"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->sSounds:I

    .line 74
    const-string v1, "HAPTIC"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->sHaptic:Ljava/lang/Boolean;

    .line 75
    const-string v1, "ROTATE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->sRotate:Ljava/lang/Boolean;

    .line 76
    invoke-virtual {p0}, Lcom/mattcarver/clicker/SettingsActivity;->setActivityState()V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/SettingsActivity;->setContentView(I)V

    .line 27
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->spSounds:Landroid/widget/Spinner;

    .line 30
    const/high16 v1, 0x7f05

    const v2, 0x1090008

    .line 29
    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 31
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 32
    iget-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->spSounds:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 35
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->cbHaptic:Landroid/widget/CheckBox;

    .line 36
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/mattcarver/clicker/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->cbRotate:Landroid/widget/CheckBox;

    .line 39
    invoke-virtual {p0}, Lcom/mattcarver/clicker/SettingsActivity;->getClickerPrefs()V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/mattcarver/clicker/SettingsActivity;->saveClickerPrefs()V

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mattcarver/clicker/SettingsActivity;->saveClickerPrefs()V

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/mattcarver/clicker/SettingsActivity;->getClickerPrefs()V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 54
    return-void
.end method

.method public saveClickerPrefs()V
    .locals 4

    .prologue
    .line 82
    const-string v2, "clicker_prefs.dat"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/mattcarver/clicker/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SOUND"

    iget-object v3, p0, Lcom/mattcarver/clicker/SettingsActivity;->spSounds:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v2, "HAPTIC"

    iget-object v3, p0, Lcom/mattcarver/clicker/SettingsActivity;->cbHaptic:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v2, "ROTATE"

    iget-object v3, p0, Lcom/mattcarver/clicker/SettingsActivity;->cbRotate:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public setActivityState()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mattcarver/clicker/SettingsActivity;->spSounds:Landroid/widget/Spinner;

    iget v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->sSounds:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 45
    iget-object v0, p0, Lcom/mattcarver/clicker/SettingsActivity;->cbHaptic:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->sHaptic:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    iget-object v0, p0, Lcom/mattcarver/clicker/SettingsActivity;->cbRotate:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mattcarver/clicker/SettingsActivity;->sRotate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    return-void
.end method
