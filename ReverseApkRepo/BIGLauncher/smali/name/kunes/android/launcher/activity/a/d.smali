.class public final Lname/kunes/android/launcher/activity/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/d;->a:Landroid/preference/PreferenceActivity;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/a/d;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/d;->a:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/d;->a:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/d;->a:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/d;->b(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/a/f;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/a/f;-><init>(Lname/kunes/android/launcher/activity/a/d;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/d;->c(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/d;->b(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/d;->b(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/a/h;

    invoke-direct {v1, p0, p2}, Lname/kunes/android/launcher/activity/a/h;-><init>(Lname/kunes/android/launcher/activity/a/d;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/d;->b(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/d;->c(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lname/kunes/android/launcher/activity/a/g;

    invoke-direct {v1, p0, p2}, Lname/kunes/android/launcher/activity/a/g;-><init>(Lname/kunes/android/launcher/activity/a/d;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/d;->b(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
