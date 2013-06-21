.class public Lname/kunes/android/launcher/c/d;
.super Lname/kunes/android/launcher/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private aa()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runCountOf"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lname/kunes/android/launcher/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lname/kunes/android/launcher/b;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 2

    const-string v0, "screenOrientation"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 2

    const-string v0, "contactDetailMore"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 2

    const-string v0, "contactDetailDelete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 2

    const-string v0, "messageDetailDelete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 2

    const-string v0, "hapticFeedback"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 2

    const-string v0, "preferencesMenuAddSystemSettings"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final G()Z
    .locals 2

    const-string v0, "preferencesMenuProtect"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final H()Z
    .locals 2

    const-string v0, "preferencesMenuProtectSystemSettingsMenu"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final I()Z
    .locals 2

    const-string v0, "contactShowPhoneOptionsTitle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final J()Z
    .locals 2

    const-string v0, "textSizeApplyToPreferences"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final K()Z
    .locals 2

    const-string v0, "contactsShowWithPhoneOnly"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final L()Z
    .locals 2

    const-string v0, "messagesThreadFix"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final M()Z
    .locals 2

    const-string v0, "messageWriteDefaultApplication"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final N()Z
    .locals 2

    const-string v0, "messageWriteToSystemApplication"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final O()Z
    .locals 2

    const-string v0, "fullScreen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final P()Z
    .locals 2

    const-string v0, "iconSignalShow"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Q()Z
    .locals 2

    const-string v0, "iconBatteryShow"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final R()I
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/c/d;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/c/d;->R()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lname/kunes/android/launcher/c/d;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final T()Z
    .locals 2

    const-string v0, "messageWriteStickyLayout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final U()Z
    .locals 2

    const-string v0, "applicationsSearchShow"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final V()Z
    .locals 2

    const-string v0, "callLogDeleteSystem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final W()Z
    .locals 2

    const-string v0, "fixIcons"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final X()Z
    .locals 2

    const-string v0, "fixTalkbackImageButton"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Y()Z
    .locals 2

    const-string v0, "talkbackWithoutProgramName"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Z()I
    .locals 2

    const-string v0, "safeBorders"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "language"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    const-string v0, "applicationsRecentCount"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    const-string v0, "runCount"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "sosCallPhone"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f()I
    .locals 2

    const-string v0, "sosCallWait"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "theme"

    invoke-virtual {p0, v0, p1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "sosSmsPhone"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "screenOrientation"

    invoke-virtual {p0, v0, p1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "sosSmsText"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "preferencesMenuPassword"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .locals 2

    const-string v0, "sosSmsWait"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    const-string v0, "textSize"

    const-string v1, "30"

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 2

    const-string v0, "textSize"

    const-string v1, "45"

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 2

    const-string v0, "textSize"

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final n()I
    .locals 2

    const-string v0, "textSize"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/c/d;->n()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/c/d;->n()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "theme"

    invoke-virtual {p0, v1, v0}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final r()I
    .locals 2

    const-string v0, "theme"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final s()V
    .locals 2

    const-string v0, "smsSent"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->d(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "smsSent"

    invoke-virtual {p0, v1, v0}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final t()V
    .locals 2

    const-string v0, "runCount"

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/c/d;->d(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "runCount"

    invoke-virtual {p0, v1, v0}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final u()Z
    .locals 2

    const-string v0, "sosCallAutomatic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 2

    const-string v0, "sosSmsAutomatic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 2

    const-string v0, "sosSmsGpsLocation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 2

    const-string v0, "sosSmsGsmLocationWhenFixDelay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 2

    const-string v0, "applicationsRecentShow"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 2

    const-string v0, "contactDetailSystem"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/c/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
