.class public final Lname/kunes/android/launcher/activity/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/preference/PreferenceActivity;

.field private final b:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/a;->a:Landroid/preference/PreferenceActivity;

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lname/kunes/android/launcher/activity/a/a;->b:Landroid/preference/ListPreference;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/a/a;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/a;->a:Landroid/preference/PreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Lname/kunes/android/launcher/activity/a/i;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/a/a;->a:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/a/a;->a:Landroid/preference/PreferenceActivity;

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lname/kunes/android/launcher/activity/a/i;-><init>([Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/a/i;->a()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/a/a;->b:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/a;->b:Landroid/preference/ListPreference;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/a/a;->a:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/a;->b:Landroid/preference/ListPreference;

    new-instance v1, Lname/kunes/android/launcher/activity/a/c;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/a/c;-><init>(Lname/kunes/android/launcher/activity/a/a;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
