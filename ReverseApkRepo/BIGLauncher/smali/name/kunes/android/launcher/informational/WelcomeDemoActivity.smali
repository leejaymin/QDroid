.class public Lname/kunes/android/launcher/informational/WelcomeDemoActivity;
.super Lname/kunes/android/activity/InformationalActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/activity/InformationalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lname/kunes/android/activity/InformationalActivity;->a()V

    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/informational/WelcomeDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected final d()I
    .locals 1

    const v0, 0x7f020173

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f06010a

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060108

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060109

    return v0
.end method

.method protected final m()Ljava/lang/Class;
    .locals 1

    const-class v0, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    return-object v0
.end method
