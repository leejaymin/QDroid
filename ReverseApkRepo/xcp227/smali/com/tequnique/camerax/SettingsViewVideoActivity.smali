.class public Lcom/tequnique/camerax/SettingsViewVideoActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private a:Lcom/tequnique/camerax/bo;

.field private b:Ljava/util/Map;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->c:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v5, 0x7f050099

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const/4 v2, 0x7

    iput v2, v0, Lcom/tequnique/camerax/bo;->aY:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->addPreferencesFromResource(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->b:Ljava/util/Map;

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-lt v0, v2, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050097

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050098

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    invoke-static {v0, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "QCIF (176 x 144)"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    invoke-static {v0, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CIF (352 x 288)"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "480p (720 x 480)"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "720p (1280 x 720)"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1080p (1920 x 1088)"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05009a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/16 v2, 0x3e9

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/16 v2, 0x3ea

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " QCIF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/16 v2, 0x3eb

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " CIF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/16 v2, 0x3ec

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " 480p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/16 v2, 0x3ed

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " 720p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    const/16 v2, 0x3ee

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " 1080p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v2, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_10

    const-string v0, "videoprofile"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "videoprofile"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v0, "videoprofile"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ae:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v0, "recordaudio"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->af:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "playvideoaftercapture"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->ad:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "maxduration"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ag:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "maxduration"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "maxfilesize"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ah:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "maxfilesize"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "videosplitdelay"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->aw:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "videosplitdelay"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "automaticnewfile"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->ai:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "videoexpert"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aj:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "copyprofilesettings"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->ak:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "audiochannels"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->al:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "audiochannels"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "AMR NB"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_d

    const-string v0, "AAC"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "AMR WB"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v2, v1

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_11

    const-string v0, "audioencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "audioencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v0, "audioencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->am:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v0, "audiobitrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->an:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "audiobitrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "audiosamplingrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ao:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "audiosamplingrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "videocapturerate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ap:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "videocapturerate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v2, 0x2002

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MPEG 4"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "RAW AMR (AMR NB)"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "3GPP"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_e

    const-string v0, "AMR WB"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v2, v1

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_12

    const-string v0, "videooutputformat"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "videooutputformat"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v0, "videooutputformat"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->aq:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "H263"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "H264"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MPEG 4 (SP)"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v2, v1

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_13

    const-string v0, "videoencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "videoencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v0, "videoencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ar:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v0, "videobitrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->as:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "videobitrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "videoframerate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->at:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "videoframerate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "videosizewidth"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->au:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "videosizewidth"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "videosizeheight"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->av:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "videosizeheight"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iput-boolean v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->c:Z

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-lt v1, v0, :cond_14

    iput-boolean v8, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->c:Z

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_11
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_12
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    :cond_13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videoprofile"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->ae:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "recordaudio"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->af:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "maxduration"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->ag:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "maxfilesize"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->ah:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "automaticnewfile"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->ai:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videosplitdelay"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->aw:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "playvideoaftercapture"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->ad:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videoexpert"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->aj:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "copyprofilesettings"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tequnique/camerax/bo;->ak:Z

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "audiochannels"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->al:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "audioencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->am:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "audiobitrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->an:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "audiosamplingrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->ao:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videocapturerate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->ap:F

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videooutputformat"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->aq:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videoencoder"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->ar:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videobitrate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->as:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videoframerate"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->at:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videosizewidth"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->au:I

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v0, "videosizeheight"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tequnique/camerax/bo;->av:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x3e8

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :try_start_0
    instance-of v2, v3, Landroid/preference/ListPreference;

    if-eqz v2, :cond_4

    move-object v0, v3

    check-cast v0, Landroid/preference/ListPreference;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

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

    :cond_2
    :goto_2
    const-string v1, "videoexpert"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "videoexpert"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const-string v1, "copyprofilesettings"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v1, "audiochannels"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    const-string v1, "audioencoder"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string v1, "audiobitrate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    const-string v1, "audiosamplingrate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    const-string v1, "videosplitdelay"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v1, v3, :cond_8

    const-string v1, "videocapturerate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :goto_3
    const-string v1, "videooutputformat"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string v1, "videoencoder"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string v1, "videobitrate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    const-string v1, "videoframerate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    const-string v1, "videosizewidth"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    const-string v1, "videosizeheight"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    const-string v1, "recordaudio"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
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

    goto/16 :goto_1

    :cond_4
    instance-of v2, v3, Lcom/tequnique/camerax/SeekBarPreference;

    if-eqz v2, :cond_6

    move-object v0, v3

    check-cast v0, Lcom/tequnique/camerax/SeekBarPreference;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    instance-of v2, v3, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_2

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_5

    :cond_8
    const-string v1, "videocapturerate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_9
    iget-boolean v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "videoprofile"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "copyprofilesettings"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_b

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewVideoActivity;->a:Lcom/tequnique/camerax/bo;

    iget v2, v1, Lcom/tequnique/camerax/bo;->i:I

    const-string v1, "videoprofile"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    move-object v2, v1

    :goto_6
    const-string v1, "audiochannels"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v1, "audioencoder"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "audiobitrate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v1, "audiosamplingrate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v1, "videooutputformat"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "videoencoder"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "videobitrate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v1, "videoframerate"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v1, "videosizewidth"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v1, "videosizeheight"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget v1, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x2d0

    if-gt v1, v3, :cond_a

    iget v1, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x1e0

    if-le v1, v2, :cond_c

    :cond_a
    const-string v1, "videosplitdelay"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "videoprofile"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_6

    :cond_c
    const-string v1, "videosplitdelay"

    invoke-virtual {p0, v1}, Lcom/tequnique/camerax/SettingsViewVideoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
