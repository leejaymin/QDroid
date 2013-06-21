.class public Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;
.super Lname/kunes/android/activity/WizardActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/WizardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final d()I
    .locals 1

    const v0, 0x7f02017a

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f0600b7

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f0600f4

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f0600fa

    return v0
.end method

.method protected final h()[Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/wizard/b;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/wizard/b;-><init>(Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;)V

    return-object v0
.end method

.method protected final j()I
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final k()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;

    return-object v0
.end method

.method protected final l()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    return-object v0
.end method

.method protected final m()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/wizard/WizardThemeActivity;

    return-object v0
.end method
