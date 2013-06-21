.class public Lname/kunes/android/launcher/wizard/WizardFinishActivity;
.super Lname/kunes/android/activity/WizardActivity;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/activity/WizardActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/wizard/WizardFinishActivity;)Landroid/widget/Spinner;
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->u()Landroid/widget/Spinner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/wizard/WizardFinishActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->a:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-super {p0}, Lname/kunes/android/activity/WizardActivity;->a()V

    invoke-virtual {p0}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->u()Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f09003d

    invoke-virtual {p0}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->q()I

    move-result v1

    new-instance v2, Lname/kunes/android/launcher/wizard/d;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/wizard/d;-><init>(Lname/kunes/android/launcher/wizard/WizardFinishActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->a(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final d()I
    .locals 1

    const v0, 0x7f020174

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f0600fe

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f0600f7

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f0600fd

    return v0
.end method

.method protected final h()[Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

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

    const-class v0, Lname/kunes/android/launcher/wizard/WizardFinishActivity;

    return-object v0
.end method

.method protected final l()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/wizard/WizardThemeActivity;

    return-object v0
.end method

.method protected final m()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/activity/HomeActivity;

    return-object v0
.end method

.method protected final o()V
    .locals 2

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/WizardActivity;->onResume()V

    iget-boolean v0, p0, Lname/kunes/android/launcher/wizard/WizardFinishActivity;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lname/kunes/android/launcher/o;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
