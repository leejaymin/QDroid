.class abstract Lname/kunes/android/launcher/activity/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lname/kunes/android/launcher/activity/PreferencesActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/e;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;)V
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v0, v1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/a/e;->a(Landroid/preference/PreferenceGroup;)V

    :cond_1
    instance-of v0, v1, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/a/e;->a(Landroid/preference/PreferenceGroup;)V

    :cond_2
    invoke-virtual {p0, p1, v1}, Lname/kunes/android/launcher/activity/a/e;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/e;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/a/e;->a(Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method abstract a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
.end method
