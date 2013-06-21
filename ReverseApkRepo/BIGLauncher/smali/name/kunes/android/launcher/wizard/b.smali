.class final Lname/kunes/android/launcher/wizard/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/wizard/b;->a:Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/d;

    iget-object v1, p0, Lname/kunes/android/launcher/wizard/b;->a:Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->k()V

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->l()V

    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->m()V

    :cond_1
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
