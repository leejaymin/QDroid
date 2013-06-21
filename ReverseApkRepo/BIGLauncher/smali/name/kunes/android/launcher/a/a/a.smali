.class abstract Lname/kunes/android/launcher/a/a/a;
.super Lname/kunes/android/launcher/a/a/e;

# interfaces
.implements Lname/kunes/android/launcher/a/a;


# instance fields
.field a:Landroid/database/Cursor;

.field b:Z

.field private d:Ljava/util/Timer;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/a/a/e;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lname/kunes/android/e/c;

    invoke-direct {v0}, Lname/kunes/android/e/c;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/a;->a:Landroid/database/Cursor;

    new-instance v0, Lname/kunes/android/launcher/a/a/n;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/a/n;-><init>(Lname/kunes/android/launcher/a/a/a;)V

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/a;->h:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/a/a/a;->f()V

    return-void
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lname/kunes/android/launcher/a/a/a;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    new-instance v1, Lname/kunes/android/launcher/a/a/p;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/a/a/p;-><init>(Lname/kunes/android/launcher/a/a/a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, Lname/kunes/android/launcher/a/a/a;->f:I

    iput p2, p0, Lname/kunes/android/launcher/a/a/a;->g:I

    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/a/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_0
    new-instance v0, Lname/kunes/android/launcher/c/e;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/a;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lname/kunes/android/launcher/a/a/a;->f:I

    iget v2, p0, Lname/kunes/android/launcher/a/a/a;->g:I

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/c/e;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p2, v0

    :cond_1
    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lname/kunes/android/a/a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/a;->e:Landroid/view/View;

    return-void
.end method

.method public d_()V
    .locals 4

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/a/a;->e_()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/a;->a:Landroid/database/Cursor;

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/a/a;->f_()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lname/kunes/android/launcher/a/a/a;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/a/a;->g_()V

    invoke-direct {p0}, Lname/kunes/android/launcher/a/a/a;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/a;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/a/a/a;->g()V

    return-void
.end method

.method abstract e_()Landroid/database/Cursor;
.end method

.method abstract f_()Landroid/net/Uri;
.end method

.method abstract g_()V
.end method
