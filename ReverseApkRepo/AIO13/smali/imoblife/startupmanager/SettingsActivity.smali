.class public Limoblife/startupmanager/SettingsActivity;
.super Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Limoblife/startupmanager/R$layout;->settings:I

    invoke-virtual {p0, v0}, Limoblife/startupmanager/SettingsActivity;->addPreferencesFromResource(I)V

    const-string v0, "ob_StartupManager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Limoblife/startupmanager/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "showNotification"

    invoke-virtual {p0, v0}, Limoblife/startupmanager/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    new-instance v2, Limoblife/startupmanager/ae;

    invoke-direct {v2, p0, v1, v0}, Limoblife/startupmanager/ae;-><init>(Limoblife/startupmanager/SettingsActivity;Landroid/content/SharedPreferences;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "mute"

    invoke-virtual {p0, v0}, Limoblife/startupmanager/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    new-instance v2, Limoblife/startupmanager/af;

    invoke-direct {v2, p0, v1, v0}, Limoblife/startupmanager/af;-><init>(Limoblife/startupmanager/SettingsActivity;Landroid/content/SharedPreferences;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
