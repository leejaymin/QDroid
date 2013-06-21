.class public Lname/kunes/android/launcher/informational/WelcomeUpdateActivity;
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

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/informational/WelcomeUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/informational/WelcomeUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    return-void
.end method

.method protected final d()I
    .locals 1

    const v0, 0x7f020174

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f060155

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060153

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060154

    return v0
.end method

.method protected final p()Ljava/lang/String;
    .locals 4

    const v0, 0x7f060155

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/informational/WelcomeUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lname/kunes/android/launcher/informational/WelcomeUpdateActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "changelog.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, La/a/a/a/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final q()I
    .locals 1

    const v0, 0x7f060158

    return v0
.end method
