.class public Lname/kunes/android/launcher/wizard/WizardLanguageActivity;
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

    const v0, 0x7f020177

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f060032

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f0600f3

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f0600f9

    return v0
.end method

.method protected final h()[Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/activity/a/i;

    invoke-virtual {p0}, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lname/kunes/android/launcher/activity/a/i;-><init>([Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/a/i;->a()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/wizard/a;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/wizard/a;-><init>(Lname/kunes/android/launcher/wizard/WizardLanguageActivity;)V

    return-object v0
.end method

.method protected final j()I
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget-object v4, v3, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final k()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    return-object v0
.end method

.method protected final l()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/activity/HomeActivity;

    return-object v0
.end method

.method protected final m()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/wizard/WizardTextSizeActivity;

    return-object v0
.end method

.method protected final n()I
    .locals 1

    const v0, 0x7f0600ee

    return v0
.end method
