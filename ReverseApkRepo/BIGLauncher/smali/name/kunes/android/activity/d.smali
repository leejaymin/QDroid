.class final Lname/kunes/android/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private a:Z

.field private synthetic b:Lname/kunes/android/activity/WizardActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/activity/WizardActivity;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/activity/d;->b:Lname/kunes/android/activity/WizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/kunes/android/activity/d;->a:Z

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-boolean v0, p0, Lname/kunes/android/activity/d;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/kunes/android/activity/d;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lname/kunes/android/activity/d;->b:Lname/kunes/android/activity/WizardActivity;

    invoke-virtual {v0}, Lname/kunes/android/activity/WizardActivity;->i()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lname/kunes/android/activity/d;->b:Lname/kunes/android/activity/WizardActivity;

    iget-object v1, p0, Lname/kunes/android/activity/d;->b:Lname/kunes/android/activity/WizardActivity;

    invoke-virtual {v1}, Lname/kunes/android/activity/WizardActivity;->k()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    iget-object v0, p0, Lname/kunes/android/activity/d;->b:Lname/kunes/android/activity/WizardActivity;

    invoke-virtual {v0}, Lname/kunes/android/activity/WizardActivity;->finish()V

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
