.class public Lcom/tequnique/camerax/SettingsViewGeneralActivity;
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

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v6, 0x7f050093

    const/16 v9, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iput v1, v0, Lcom/tequnique/camerax/bo;->aY:I

    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->addPreferencesFromResource(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->b:Ljava/util/Map;

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    move-object v2, v3

    move-object v3, v4

    :goto_2
    const-string v0, "viewfinderresolution"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "viewfinderresolution"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v0, "viewfinderresolution"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->H:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v0, "zoomslider"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aB:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "zoomslider"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aR:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v0, "settodefault"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->M:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "useMediaButtonForCapturing"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->g:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "askbeforeexit"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->r:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "shuttersound"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->N:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "launchcamprobutton"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->j:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "showfocusingrect"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->k:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "showfocusingbutton"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->l:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "geotagging"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->I:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "touchfocus"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->m:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "touchfocus"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v0, "fullscreenviewfinder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->n:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "showunsupportedcontrols"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->q:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "gridcells"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->aA:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "gridcells"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "guidesign"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v0, "menualpha"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/SeekBarPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->aD:I

    invoke-virtual {v0, v2}, Lcom/tequnique/camerax/SeekBarPreference;->a(I)V

    const-string v0, "whiteicons"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aE:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "showmenutext"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aF:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "volumekeysforshutter"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->o:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "htcfix"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->b:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "lgOrientationFix"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->c:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_6

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    :goto_4
    new-array v2, v0, [Ljava/lang/CharSequence;

    new-array v3, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f050095

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "0"

    aput-object v0, v3, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f050096

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "1"

    aput-object v0, v3, v5

    :cond_0
    :try_start_0
    const-string v0, "sourcecamera"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "sourcecamera"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v0, "sourcecamera"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-lt v1, v0, :cond_5

    return-void

    :cond_1
    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v8, v0}, Lcom/tequnique/camerax/bo;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_3
    new-array v2, v5, [Ljava/lang/CharSequence;

    new-array v0, v5, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_4
    move v2, v1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_6
    move v0, v5

    goto/16 :goto_4
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    :try_start_0
    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "viewfinderresolution"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->H:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "sourcecamera"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "zoomslider"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->aB:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "settodefault"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->M:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "useMediaButtonForCapturing"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->g:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "shuttersound"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->N:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "launchcamprobutton"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->j:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "askbeforeexit"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->r:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "showfocusingrect"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->k:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "showfocusingbutton"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->l:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "geotagging"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->I:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "touchfocus"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->m:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "fullscreenviewfinder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->n:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "volumekeysforshutter"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->o:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "showunsupportedcontrols"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->q:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "htcfix"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->b:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "lgOrientationFix"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->c:Z

    :try_start_2
    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "gridcells"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->aA:I

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->aA:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/tequnique/camerax/bo;->aA:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "guidesign"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "menualpha"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/SeekBarPreference;

    invoke-virtual {v0}, Lcom/tequnique/camerax/SeekBarPreference;->a()I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->aD:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "whiteicons"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->aE:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "showmenutext"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->aF:Z

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->a:Lcom/tequnique/camerax/bo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tequnique/camerax/bo;->aA:I

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->b:Ljava/util/Map;

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

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewGeneralActivity;->getResources()Landroid/content/res/Resources;

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
