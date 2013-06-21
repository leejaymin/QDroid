.class final Lname/kunes/android/launcher/activity/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PreferencesActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ao;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ao;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    const-string v0, "textSize"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-static {v1, v0}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/activity/PreferencesActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
