.class public Lname/kunes/android/launcher/activity/SosActivity;
.super Lname/kunes/android/activity/DefaultActivity;


# instance fields
.field private a:Lname/kunes/android/launcher/activity/e/e;

.field private b:Lname/kunes/android/launcher/activity/e/f;

.field private c:Lname/kunes/android/launcher/c/d;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lname/kunes/android/activity/DefaultActivity;-><init>()V

    new-instance v0, Lname/kunes/android/launcher/activity/e/e;

    invoke-direct {v0, v1, v1}, Lname/kunes/android/launcher/activity/e/e;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    new-instance v0, Lname/kunes/android/launcher/activity/e/f;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/activity/e/f;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->b:Lname/kunes/android/launcher/activity/e/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->d:Z

    return-void
.end method

.method private a(I)Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0, p1}, Lname/kunes/android/launcher/activity/SosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    new-instance v4, Lname/kunes/android/d/c;

    invoke-direct {v4, p0, v3}, Lname/kunes/android/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v3, p2}, Lname/kunes/android/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/SosActivity;)V
    .locals 3

    const v0, 0x7f090034

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/SosActivity;->a(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    iget-object v1, v1, Lname/kunes/android/launcher/activity/e/e;->a:Lname/kunes/android/launcher/activity/e/c;

    const v2, 0x7f06003d

    invoke-direct {p0, v0, v1, v2}, Lname/kunes/android/launcher/activity/SosActivity;->a(Landroid/widget/Button;Lname/kunes/android/launcher/activity/e/c;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/SosActivity;->d()V

    :cond_0
    const v0, 0x7f090035

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/SosActivity;->a(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    iget-object v1, v1, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    const v2, 0x7f06003e

    invoke-direct {p0, v0, v1, v2}, Lname/kunes/android/launcher/activity/SosActivity;->a(Landroid/widget/Button;Lname/kunes/android/launcher/activity/e/c;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/SosActivity;->e()V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/Button;Lname/kunes/android/launcher/activity/e/c;I)Z
    .locals 2

    invoke-virtual {p2}, Lname/kunes/android/launcher/activity/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lname/kunes/android/launcher/activity/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lname/kunes/android/launcher/activity/SosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lname/kunes/android/launcher/activity/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lname/kunes/android/launcher/activity/e/c;->e()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/c/d;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->c:Lname/kunes/android/launcher/c/d;

    return-object v0
.end method

.method static synthetic c(Lname/kunes/android/launcher/activity/SosActivity;)Lname/kunes/android/launcher/activity/e/e;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/e;->b()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->c:Lname/kunes/android/launcher/c/d;

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-static {p0, v1}, Lname/kunes/android/h/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lname/kunes/android/launcher/activity/SosActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->d:Z

    return v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/c;->e()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->c:Lname/kunes/android/launcher/c/d;

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->c:Lname/kunes/android/launcher/c/d;

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-class v0, Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lname/kunes/android/launcher/activity/SosActivity;->b:Lname/kunes/android/launcher/activity/e/f;

    iget-object v2, v2, Lname/kunes/android/launcher/activity/e/f;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " http://maps.google.com/maps?q="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lname/kunes/android/launcher/activity/SosActivity;->b:Lname/kunes/android/launcher/activity/e/f;

    iget-object v2, v2, Lname/kunes/android/launcher/activity/e/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v1, v0}, Lname/kunes/android/launcher/activity/SosActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lname/kunes/android/launcher/activity/SosActivity;->d:Z

    goto :goto_1
.end method

.method static synthetic e(Lname/kunes/android/launcher/activity/SosActivity;)V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/SosActivity;->e()V

    return-void
.end method

.method static synthetic f(Lname/kunes/android/launcher/activity/SosActivity;)V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/SosActivity;->d()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->c:Lname/kunes/android/launcher/c/d;

    new-instance v0, Lname/kunes/android/launcher/activity/e/f;

    new-instance v1, Lname/kunes/android/launcher/activity/s;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/s;-><init>(Lname/kunes/android/launcher/activity/SosActivity;)V

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/activity/e/f;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->b:Lname/kunes/android/launcher/activity/e/f;

    new-instance v0, Lname/kunes/android/launcher/activity/e/e;

    new-instance v1, Lname/kunes/android/launcher/activity/t;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/t;-><init>(Lname/kunes/android/launcher/activity/SosActivity;)V

    invoke-direct {v0, p0, v1}, Lname/kunes/android/launcher/activity/e/e;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/e;->a()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->b:Lname/kunes/android/launcher/activity/e/f;

    invoke-static {p0, v0}, Lname/kunes/android/launcher/activity/e/d;->a(Landroid/app/Activity;Landroid/location/LocationListener;)V

    const v0, 0x7f090034

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/SosActivity;->a(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/r;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/r;-><init>(Lname/kunes/android/launcher/activity/SosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090035

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/SosActivity;->a(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/v;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/v;-><init>(Lname/kunes/android/launcher/activity/SosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090036

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/activity/SosActivity;->a(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/u;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/u;-><init>(Lname/kunes/android/launcher/activity/SosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final b_()I
    .locals 1

    const v0, 0x7f03000e

    return v0
.end method

.method protected final c_()I
    .locals 1

    const v0, 0x7f090036

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060045

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060045

    return v0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onStart()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/e;->c()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/DefaultActivity;->onStop()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->b:Lname/kunes/android/launcher/activity/e/f;

    invoke-static {p0, v0}, Lname/kunes/android/launcher/activity/e/d;->b(Landroid/app/Activity;Landroid/location/LocationListener;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/SosActivity;->a:Lname/kunes/android/launcher/activity/e/e;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/e;->b()V

    return-void
.end method
