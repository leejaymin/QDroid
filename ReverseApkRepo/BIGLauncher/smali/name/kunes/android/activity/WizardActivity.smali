.class public abstract Lname/kunes/android/activity/WizardActivity;
.super Lname/kunes/android/activity/DefaultActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/DefaultActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->o()V

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->t()V

    const v0, 0x7f09003f

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->n()I

    move-result v1

    new-instance v2, Lname/kunes/android/activity/a;

    invoke-direct {v2, p0}, Lname/kunes/android/activity/a;-><init>(Lname/kunes/android/activity/WizardActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lname/kunes/android/activity/WizardActivity;->a(IILandroid/view/View$OnClickListener;)V

    const v0, 0x7f09003d

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->q()I

    move-result v1

    new-instance v2, Lname/kunes/android/activity/b;

    invoke-direct {v2, p0}, Lname/kunes/android/activity/b;-><init>(Lname/kunes/android/activity/WizardActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lname/kunes/android/activity/WizardActivity;->a(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final a(IILandroid/view/View$OnClickListener;)V
    .locals 2

    invoke-virtual {p0, p1}, Lname/kunes/android/activity/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lname/kunes/android/activity/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final b_()I
    .locals 1

    const v0, 0x7f030010

    return v0
.end method

.method protected final c_()I
    .locals 1

    const v0, 0x7f09003f

    return v0
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method protected abstract h()[Ljava/lang/CharSequence;
.end method

.method protected abstract i()Landroid/widget/AdapterView$OnItemSelectedListener;
.end method

.method protected abstract j()I
.end method

.method protected abstract k()Ljava/lang/Class;
.end method

.method protected abstract l()Ljava/lang/Class;
.end method

.method protected abstract m()Ljava/lang/Class;
.end method

.method protected n()I
    .locals 1

    const v0, 0x7f0600ef

    return v0
.end method

.method protected o()V
    .locals 2

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected p()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lname/kunes/android/activity/WizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected q()I
    .locals 1

    const v0, 0x7f0600f0

    return v0
.end method

.method protected t()V
    .locals 3

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->u()Landroid/widget/Spinner;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lname/kunes/android/activity/c;

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->h()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lname/kunes/android/activity/c;-><init>(Lname/kunes/android/activity/WizardActivity;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0}, Lname/kunes/android/activity/WizardActivity;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v1, Lname/kunes/android/activity/d;

    invoke-direct {v1, p0}, Lname/kunes/android/activity/d;-><init>(Lname/kunes/android/activity/WizardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method protected final u()Landroid/widget/Spinner;
    .locals 1

    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lname/kunes/android/activity/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method
