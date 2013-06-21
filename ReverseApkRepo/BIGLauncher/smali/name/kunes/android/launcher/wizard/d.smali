.class final Lname/kunes/android/launcher/wizard/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/wizard/WizardFinishActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/wizard/WizardFinishActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/wizard/d;->a:Lname/kunes/android/launcher/wizard/WizardFinishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/wizard/d;->a:Lname/kunes/android/launcher/wizard/WizardFinishActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/wizard/d;->a:Lname/kunes/android/launcher/wizard/WizardFinishActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->a(Lname/kunes/android/launcher/wizard/WizardFinishActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lname/kunes/android/launcher/wizard/d;->a:Lname/kunes/android/launcher/wizard/WizardFinishActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->b(Lname/kunes/android/launcher/wizard/WizardFinishActivity;)V

    const-class v1, Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lname/kunes/android/launcher/o;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
