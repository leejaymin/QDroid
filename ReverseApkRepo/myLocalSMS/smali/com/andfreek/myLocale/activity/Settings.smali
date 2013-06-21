.class public Lcom/andfreek/myLocale/activity/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private cP:Landroid/preference/CheckBoxPreference;

.field private context:Landroid/content/Context;

.field private donatePref:Landroid/preference/PreferenceScreen;

.field private enablePopup:Landroid/preference/CheckBoxPreference;

.field private lP:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iput-object p0, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    .line 30
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/andfreek/myLocale/activity/Settings;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/andfreek/myLocale/activity/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 32
    .local v0, root:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->lP:Landroid/preference/ListPreference;

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->cP:Landroid/preference/CheckBoxPreference;

    .line 34
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->enablePopup:Landroid/preference/CheckBoxPreference;

    .line 35
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->donatePref:Landroid/preference/PreferenceScreen;

    .line 36
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->lP:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 37
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->cP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 38
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->enablePopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 39
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->lP:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/andfreek/myLocale/db/DBManager;->getTargetLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->cP:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/andfreek/myLocale/db/DBManager;->isTranslationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 41
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Settings;->donatePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 42
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "languagelist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/andfreek/myLocale/db/DBManager;->updateLanguageSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->lP:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/andfreek/myLocale/db/DBManager;->getTargetLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->cP:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/andfreek/myLocale/db/DBManager;->isTranslationEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->enablePopup:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/andfreek/myLocale/db/DBManager;->isPopupEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    const/4 v2, 0x1

    return v2

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable_translation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 54
    .local v1, flag:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/andfreek/myLocale/db/DBManager;->enableTranslation(Landroid/content/Context;Z)V

    goto :goto_0

    .line 55
    .end local v1           #flag:Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable_popup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 58
    .restart local v1       #flag:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Settings;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/andfreek/myLocale/db/DBManager;->enablePopup(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, i:Landroid/content/Intent;
    const-string v1, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=8371629"

    .line 70
    .local v1, paypal:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 71
    .local v2, u:Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/andfreek/myLocale/activity/Settings;->startActivity(Landroid/content/Intent;)V

    .line 76
    const/4 v3, 0x0

    return v3
.end method
