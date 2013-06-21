.class public final Lname/kunes/android/launcher/activity/e/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Lname/kunes/android/launcher/activity/e/c;

.field public b:Lname/kunes/android/launcher/activity/e/c;

.field private final c:Landroid/app/Activity;

.field private final d:Ljava/lang/Runnable;

.field private e:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lname/kunes/android/launcher/activity/e/c;

    invoke-direct {v0}, Lname/kunes/android/launcher/activity/e/c;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->a:Lname/kunes/android/launcher/activity/e/c;

    new-instance v0, Lname/kunes/android/launcher/activity/e/c;

    invoke-direct {v0}, Lname/kunes/android/launcher/activity/e/c;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    iput-object p1, p0, Lname/kunes/android/launcher/activity/e/e;->c:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/e/e;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/e/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/activity/e/e;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->d:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/e/e;->b()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->e:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->e:Ljava/util/Timer;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->e:Ljava/util/Timer;

    new-instance v1, Lname/kunes/android/launcher/activity/e/b;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/e/b;-><init>(Lname/kunes/android/launcher/activity/e/e;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->a:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/c;->e()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/c;->e()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->e:Ljava/util/Timer;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final c()V
    .locals 4

    new-instance v2, Lname/kunes/android/launcher/c/d;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->c:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->f()I

    move-result v0

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->j()I

    move-result v3

    iget-object v1, p0, Lname/kunes/android/launcher/activity/e/e;->e:Ljava/util/Timer;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v0, v3

    :cond_0
    iget-object v1, p0, Lname/kunes/android/launcher/activity/e/e;->a:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/activity/e/c;->a(I)V

    :cond_1
    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0, v3}, Lname/kunes/android/launcher/activity/e/c;->a(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
