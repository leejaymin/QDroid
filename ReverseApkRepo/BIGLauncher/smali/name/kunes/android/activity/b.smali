.class final Lname/kunes/android/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/activity/WizardActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/activity/WizardActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/activity/b;->a:Lname/kunes/android/activity/WizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/activity/b;->a:Lname/kunes/android/activity/WizardActivity;

    invoke-virtual {v0}, Lname/kunes/android/activity/WizardActivity;->m()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lname/kunes/android/launcher/activity/HomeActivity;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lname/kunes/android/activity/b;->a:Lname/kunes/android/activity/WizardActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/o;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lname/kunes/android/activity/b;->a:Lname/kunes/android/activity/WizardActivity;

    iget-object v1, p0, Lname/kunes/android/activity/b;->a:Lname/kunes/android/activity/WizardActivity;

    invoke-virtual {v1}, Lname/kunes/android/activity/WizardActivity;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    iget-object v0, p0, Lname/kunes/android/activity/b;->a:Lname/kunes/android/activity/WizardActivity;

    invoke-virtual {v0}, Lname/kunes/android/activity/WizardActivity;->finish()V

    goto :goto_0
.end method
