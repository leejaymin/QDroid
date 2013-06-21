.class public Lcom/tequnique/camerax/SettingsViewBracketingActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private a:Lcom/tequnique/camerax/bo;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    const/4 v2, 0x6

    iput v2, v0, Lcom/tequnique/camerax/bo;->aY:I

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->addPreferencesFromResource(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->b:Ljava/util/Map;

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    const-string v0, "bracketingdelay"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->S:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "bracketingdelay"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "bracketing_af"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->T:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->aT:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->aU:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aS:Z

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_1
    new-array v4, v2, [Ljava/lang/CharSequence;

    new-array v5, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050092

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    if-le v2, v3, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->aT:I

    :goto_2
    iget-object v6, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget v6, v6, Lcom/tequnique/camerax/bo;->aU:I

    if-le v0, v6, :cond_2

    :cond_0
    move v3, v1

    :goto_3
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->U:[I

    array-length v0, v0

    if-lt v3, v0, :cond_3

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-lt v1, v0, :cond_6

    return-void

    :cond_1
    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    int-to-float v7, v0

    iget-object v8, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget v8, v8, Lcom/tequnique/camerax/bo;->aV:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " EV"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->U:[I

    aget v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->U:[I

    aget v0, v0, v3

    if-lt v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->U:[I

    aput v1, v0, v3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "expcomp"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "expcomp"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "expcomp"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v6, v6, Lcom/tequnique/camerax/bo;->U:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_7
    move v2, v0

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "bracketingdelay"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->S:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "bracketing_af"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->T:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->U:[I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v2, v0, Lcom/tequnique/camerax/bo;->U:[I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "expcomp"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :try_start_0
    instance-of v2, v3, Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    move-object v0, v3

    check-cast v0, Landroid/preference/ListPreference;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v2, v3, Lcom/tequnique/camerax/SeekBarPreference;

    if-eqz v2, :cond_5

    move-object v0, v3

    check-cast v0, Lcom/tequnique/camerax/SeekBarPreference;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tequnique/camerax/SeekBarPreference;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    instance-of v2, v3, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_0

    move-object v0, v3

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewBracketingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_3
.end method
