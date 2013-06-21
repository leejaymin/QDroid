.class final Lname/kunes/android/launcher/wizard/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/wizard/WizardThemeActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/wizard/WizardThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/wizard/c;->a:Lname/kunes/android/launcher/wizard/WizardThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/c/d;

    iget-object v1, p0, Lname/kunes/android/launcher/wizard/c;->a:Lname/kunes/android/launcher/wizard/WizardThemeActivity;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lname/kunes/android/launcher/wizard/c;->a:Lname/kunes/android/launcher/wizard/WizardThemeActivity;

    invoke-virtual {v1}, Lname/kunes/android/launcher/wizard/WizardThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/c/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
