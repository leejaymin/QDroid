.class public Lname/kunes/android/launcher/activity/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lname/kunes/android/c/l;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 6

    new-instance v0, Lname/kunes/android/launcher/activity/a/a;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/a/a;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/a/a;->a()V

    new-instance v1, Lname/kunes/android/launcher/activity/a/d;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/a/d;-><init>(Landroid/preference/PreferenceActivity;)V

    new-instance v2, Lname/kunes/android/launcher/c/f;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/c/f;-><init>(Landroid/content/Context;)V

    const-string v0, "textSizeApplyToPreferences"

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;)V

    const-string v0, "customizeScreens"

    const-class v3, Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    invoke-virtual {v1, v0, v3}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "wizard"

    const-class v3, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    invoke-virtual {v1, v0, v3}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "applicationsAllowed"

    const-class v3, Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;

    invoke-virtual {v1, v0, v3}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "theme"

    new-instance v3, Lname/kunes/android/launcher/activity/am;

    invoke-direct {v3, p0, v2}, Lname/kunes/android/launcher/activity/am;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;Lname/kunes/android/launcher/c/f;)V

    invoke-virtual {v1, v0, v3}, Lname/kunes/android/launcher/activity/a/d;->b(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "screenOrientation"

    new-instance v3, Lname/kunes/android/launcher/activity/an;

    invoke-direct {v3, p0, v2}, Lname/kunes/android/launcher/activity/an;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;Lname/kunes/android/launcher/c/f;)V

    invoke-virtual {v1, v0, v3}, Lname/kunes/android/launcher/activity/a/d;->b(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "textSize"

    new-instance v3, Lname/kunes/android/launcher/activity/ao;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/activity/ao;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v1, v0, v3}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "cleanDefaultLauncher"

    new-instance v3, Lname/kunes/android/launcher/activity/ap;

    invoke-direct {v3, p0, v2, p0}, Lname/kunes/android/launcher/activity/ap;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;Lname/kunes/android/launcher/c/f;Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v1, v0, v3}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/f;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lname/kunes/android/launcher/activity/PreferencesActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/f;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "advance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " \n("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "buttonMyContactsApplication"

    new-instance v4, Lname/kunes/android/launcher/activity/aq;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/aq;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v1, v3, v0, v4}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "buttonDialerApplication"

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/f;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lname/kunes/android/launcher/activity/PreferencesActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lname/kunes/android/launcher/activity/ar;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/activity/ar;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "update"

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lname/kunes/android/launcher/activity/as;

    invoke-direct {v3, p0}, Lname/kunes/android/launcher/activity/as;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lname/kunes/android/launcher/activity/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "messagesThreadFix"

    new-instance v2, Lname/kunes/android/launcher/activity/at;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/activity/at;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v1, v0, v2}, Lname/kunes/android/launcher/activity/a/d;->c(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "fullScreen"

    new-instance v2, Lname/kunes/android/launcher/activity/au;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/activity/au;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v1, v0, v2}, Lname/kunes/android/launcher/activity/a/d;->c(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    const/high16 v0, 0x7f06

    :try_start_0
    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "%s v%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "package_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/c/f;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/c/f;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/c/f;->h(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/c/f;->i(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lname/kunes/android/launcher/g;->a(Landroid/content/Context;)V

    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->setTitle(I)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->addPreferencesFromResource(I)V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lname/kunes/android/launcher/a;->a(Landroid/app/Activity;)V

    new-instance v0, Lname/kunes/android/launcher/activity/a/j;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/a/j;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/a/j;->a()V

    :cond_0
    invoke-direct {p0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->a()V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "advance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lname/kunes/android/launcher/activity/a/b;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/a/b;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/a/b;->a()V

    :cond_1
    return-void
.end method
