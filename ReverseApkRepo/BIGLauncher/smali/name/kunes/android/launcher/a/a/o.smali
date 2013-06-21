.class final Lname/kunes/android/launcher/a/a/o;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/a/a/b;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "level"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private static a(Landroid/content/Intent;[I)I
    .locals 4

    invoke-static {p0}, Lname/kunes/android/launcher/a/a/o;->a(Landroid/content/Intent;)I

    move-result v2

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v3, v0, 0xa

    if-le v2, v3, :cond_1

    aget v1, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const v1, 0x7f020016

    const/4 v4, 0x0

    const-string v0, "status"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Lname/kunes/android/launcher/c/d;

    iget-object v3, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-static {v3}, Lname/kunes/android/launcher/a/a/b;->b(Lname/kunes/android/launcher/a/a/b;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->q()Z

    move-result v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-static {p2}, Lname/kunes/android/launcher/a/a/o;->a(Landroid/content/Intent;)I

    move-result v2

    const/16 v3, 0x63

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-static {v0}, Lname/kunes/android/launcher/a/a/b;->b(Lname/kunes/android/launcher/a/a/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-static {v0}, Lname/kunes/android/launcher/a/a/b;->a(Lname/kunes/android/launcher/a/a/b;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060150

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lname/kunes/android/launcher/a/a/o;->a(Landroid/content/Intent;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-static {v1, v0}, Lname/kunes/android/launcher/a/j;->a(Lname/kunes/android/launcher/a/a;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lname/kunes/android/launcher/a/a/b;->b()[I

    move-result-object v0

    :goto_1
    invoke-static {p2, v0}, Lname/kunes/android/launcher/a/a/o;->a(Landroid/content/Intent;[I)I

    move-result v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-static {v1}, Lname/kunes/android/launcher/a/a/b;->b(Lname/kunes/android/launcher/a/a/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-static {v0}, Lname/kunes/android/launcher/a/a/b;->b(Lname/kunes/android/launcher/a/a/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lname/kunes/android/launcher/a/a/b;->c()[I

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    invoke-static {}, Lname/kunes/android/launcher/a/a/b;->d()[I

    move-result-object v0

    :goto_2
    invoke-static {p2, v0}, Lname/kunes/android/launcher/a/a/o;->a(Landroid/content/Intent;[I)I

    move-result v0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    move v0, v1

    :cond_3
    iget-object v1, p0, Lname/kunes/android/launcher/a/a/o;->a:Lname/kunes/android/launcher/a/a/b;

    invoke-static {v1}, Lname/kunes/android/launcher/a/a/b;->b(Lname/kunes/android/launcher/a/a/b;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lname/kunes/android/launcher/a/a/b;->f()[I

    move-result-object v0

    goto :goto_2
.end method
