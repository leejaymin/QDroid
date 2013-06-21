.class final Lname/kunes/android/b/g;
.super Ljava/util/TimerTask;


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lname/kunes/android/b/g;->a:I

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lname/kunes/android/b/g;->b()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 1

    invoke-static {}, Lname/kunes/android/b/f;->b()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lname/kunes/android/b/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lname/kunes/android/b/f;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lname/kunes/android/b/c;

    invoke-direct {v1, p0}, Lname/kunes/android/b/c;-><init>(Lname/kunes/android/b/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lname/kunes/android/b/g;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lname/kunes/android/b/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lname/kunes/android/b/g;->a:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    invoke-static {}, Lname/kunes/android/b/f;->c()V

    goto :goto_0
.end method
