.class public Lname/kunes/android/launcher/informational/DemoInformationActivity;
.super Lname/kunes/android/activity/InformationalActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/InformationalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const v2, 0x7f09003d

    invoke-super {p0}, Lname/kunes/android/activity/InformationalActivity;->a()V

    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/informational/DemoInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060158

    new-instance v1, Lname/kunes/android/launcher/informational/d;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/informational/d;-><init>(Lname/kunes/android/launcher/informational/DemoInformationActivity;)V

    invoke-virtual {p0, v2, v0, v1}, Lname/kunes/android/launcher/informational/DemoInformationActivity;->a(IILandroid/view/View$OnClickListener;)V

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/informational/DemoInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    return-void
.end method

.method protected final d()I
    .locals 1

    const v0, 0x7f020173

    return v0
.end method

.method protected final e()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expecting text in intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f0600f6

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f0600fc

    return v0
.end method

.method protected final p()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/informational/DemoInformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lname/kunes/android/activity/InformationalActivity;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final q()I
    .locals 1

    const v0, 0x7f060158

    return v0
.end method
