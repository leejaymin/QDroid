.class public Lname/kunes/android/launcher/activity/EightScreenConfigActivity;
.super Lname/kunes/android/launcher/activity/EightScreenActivity;


# instance fields
.field private a:[Lname/kunes/android/launcher/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->h()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->d()V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;)[Lname/kunes/android/launcher/a/h;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a:[Lname/kunes/android/launcher/a/h;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/launcher/activity/EightScreenActivity;->a()V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lname/kunes/android/launcher/a/h;

    iput-object v0, p0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a:[Lname/kunes/android/launcher/a/h;

    return-void
.end method

.method protected final a(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->h()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lname/kunes/android/launcher/c/e;->b(II)Lname/kunes/android/launcher/a/o;

    move-result-object v0

    instance-of v1, v0, Lname/kunes/android/launcher/a/d;

    if-eqz v1, :cond_0

    check-cast v0, Lname/kunes/android/launcher/a/d;

    const/4 v1, 0x7

    new-array v1, v1, [Lname/kunes/android/launcher/a/h;

    invoke-interface {v0, p0}, Lname/kunes/android/launcher/a/d;->a(Landroid/app/Activity;)Lname/kunes/android/launcher/a/h;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Lname/kunes/android/launcher/a/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/e;-><init>(Landroid/app/Activity;)V

    aput-object v0, v1, v3

    new-instance v0, Lname/kunes/android/launcher/a/b;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/b;-><init>(Landroid/app/Activity;)V

    aput-object v0, v1, v4

    new-instance v0, Lname/kunes/android/launcher/a/m;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/m;-><init>(Landroid/app/Activity;)V

    aput-object v0, v1, v5

    new-instance v0, Lname/kunes/android/launcher/a/b/a;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/b/a;-><init>(Landroid/app/Activity;)V

    aput-object v0, v1, v6

    const/4 v0, 0x5

    new-instance v2, Lname/kunes/android/launcher/a/c;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/c;-><init>(Landroid/app/Activity;)V

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-instance v2, Lname/kunes/android/launcher/a/n;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/n;-><init>(Landroid/app/Activity;)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a:[Lname/kunes/android/launcher/a/h;

    :goto_0
    new-instance v0, Lname/kunes/android/launcher/activity/f;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a:[Lname/kunes/android/launcher/a/h;

    invoke-direct {v0, p0, p0, v1}, Lname/kunes/android/launcher/activity/f;-><init>(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;Landroid/content/Context;[Lname/kunes/android/launcher/a/h;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lname/kunes/android/launcher/activity/g;

    invoke-direct {v2, p0, p1}, Lname/kunes/android/launcher/activity/g;-><init>(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Lname/kunes/android/launcher/a/h;

    new-instance v1, Lname/kunes/android/launcher/a/e;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/a/e;-><init>(Landroid/app/Activity;)V

    aput-object v1, v0, v2

    new-instance v1, Lname/kunes/android/launcher/a/b;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/a/b;-><init>(Landroid/app/Activity;)V

    aput-object v1, v0, v3

    new-instance v1, Lname/kunes/android/launcher/a/m;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/a/m;-><init>(Landroid/app/Activity;)V

    aput-object v1, v0, v4

    new-instance v1, Lname/kunes/android/launcher/a/b/a;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/a/b/a;-><init>(Landroid/app/Activity;)V

    aput-object v1, v0, v5

    new-instance v1, Lname/kunes/android/launcher/a/c;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/a/c;-><init>(Landroid/app/Activity;)V

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Lname/kunes/android/launcher/a/n;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/a/n;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a:[Lname/kunes/android/launcher/a/h;

    goto :goto_0
.end method

.method protected a(ILname/kunes/android/launcher/a/o;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lname/kunes/android/launcher/activity/EightScreenActivity;->a(ILname/kunes/android/launcher/a/o;I)V

    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->findViewById(I)Landroid/view/View;

    return-void
.end method

.method protected b_()I
    .locals 1

    const/high16 v0, 0x7f03

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060124

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a:[Lname/kunes/android/launcher/a/h;

    aget-object v0, v0, p1

    invoke-interface {v0, p3}, Lname/kunes/android/launcher/a/h;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setting_button"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    instance-of v0, v0, Lname/kunes/android/launcher/a/b/a;

    if-eqz v0, :cond_1

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->h()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lname/kunes/android/launcher/c/e;->a(IILjava/lang/String;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2, v1}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lname/kunes/android/launcher/activity/EightScreenActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a:[Lname/kunes/android/launcher/a/h;

    return-object v0
.end method
