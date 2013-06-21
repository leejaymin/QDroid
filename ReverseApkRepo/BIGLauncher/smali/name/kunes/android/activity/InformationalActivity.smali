.class public abstract Lname/kunes/android/activity/InformationalActivity;
.super Lname/kunes/android/activity/WizardActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/WizardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Lname/kunes/android/activity/WizardActivity;->a()V

    invoke-virtual {p0}, Lname/kunes/android/activity/InformationalActivity;->u()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/InformationalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/InformationalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    return-void
.end method

.method protected final h()[Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final k()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/activity/InformationalActivity;

    return-object v0
.end method

.method protected final l()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/activity/HomeActivity;

    return-object v0
.end method

.method protected m()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/activity/HomeActivity;

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/activity/InformationalActivity;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/InformationalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final t()V
    .locals 0

    return-void
.end method
