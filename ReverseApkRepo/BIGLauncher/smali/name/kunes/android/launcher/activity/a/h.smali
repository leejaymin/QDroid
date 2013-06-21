.class final Lname/kunes/android/launcher/activity/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/a/d;

.field private final synthetic b:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/a/d;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a/h;->a:Lname/kunes/android/launcher/activity/a/d;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/a/h;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a/h;->a:Lname/kunes/android/launcher/activity/a/d;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/a/d;->a(Lname/kunes/android/launcher/activity/a/d;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/a/h;->b:Ljava/lang/Class;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    const/4 v0, 0x1

    return v0
.end method
