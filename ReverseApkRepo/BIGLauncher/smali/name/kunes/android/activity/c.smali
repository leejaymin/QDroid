.class final Lname/kunes/android/activity/c;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private synthetic a:Lname/kunes/android/activity/WizardActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/activity/WizardActivity;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/activity/c;->a:Lname/kunes/android/activity/WizardActivity;

    const v0, 0x7f03000f

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lname/kunes/android/activity/c;->a:Lname/kunes/android/activity/WizardActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lname/kunes/android/launcher/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method
