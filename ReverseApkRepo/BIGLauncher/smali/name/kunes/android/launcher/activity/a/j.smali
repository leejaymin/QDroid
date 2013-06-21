.class public final Lname/kunes/android/launcher/activity/a/j;
.super Lname/kunes/android/launcher/activity/a/e;


# direct methods
.method public constructor <init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/e;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lname/kunes/android/launcher/activity/a/e;->a()V

    return-void
.end method

.method final a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 2

    const v0, 0x7f03000b

    instance-of v1, p2, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    const v0, 0x7f03000c

    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method
