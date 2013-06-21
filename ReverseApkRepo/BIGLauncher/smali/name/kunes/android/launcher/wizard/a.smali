.class final Lname/kunes/android/launcher/wizard/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/wizard/WizardLanguageActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/wizard/WizardLanguageActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/wizard/a;->a:Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/wizard/a;->a:Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/c/d;

    iget-object v2, p0, Lname/kunes/android/launcher/wizard/a;->a:Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    invoke-direct {v1, v2}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    aget-object v0, v0, p3

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/c/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
