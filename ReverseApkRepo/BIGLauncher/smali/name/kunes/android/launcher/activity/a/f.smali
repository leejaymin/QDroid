.class final Lname/kunes/android/launcher/activity/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/a/d;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/a/d;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/f;->a:Lname/kunes/android/launcher/activity/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/f;->a:Lname/kunes/android/launcher/activity/a/d;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/a/d;->a(Lname/kunes/android/launcher/activity/a/d;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-class v1, Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/f;->a:Lname/kunes/android/launcher/activity/a/d;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/a/d;->a(Lname/kunes/android/launcher/activity/a/d;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
