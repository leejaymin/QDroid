.class final Lname/kunes/android/launcher/activity/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/a/a;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/a/a;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/c;->a:Lname/kunes/android/launcher/activity/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/d;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/a/c;->a:Lname/kunes/android/launcher/activity/a/a;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/a/a;->a(Lname/kunes/android/launcher/activity/a/a;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/c/d;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/c;->a:Lname/kunes/android/launcher/activity/a/a;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/a/a;->a(Lname/kunes/android/launcher/activity/a/a;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/launcher/o;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method
