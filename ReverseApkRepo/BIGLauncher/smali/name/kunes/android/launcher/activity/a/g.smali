.class final Lname/kunes/android/launcher/activity/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/a/d;

.field private final synthetic b:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/a/d;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/g;->a:Lname/kunes/android/launcher/activity/a/d;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/a/g;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lname/kunes/android/launcher/activity/a/g;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/g;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lname/kunes/android/launcher/activity/a/g;->a:Lname/kunes/android/launcher/activity/a/d;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/a/d;->a(Lname/kunes/android/launcher/activity/a/d;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-static {v1}, Lname/kunes/android/launcher/o;->a(Landroid/app/Activity;)V

    return v0
.end method
