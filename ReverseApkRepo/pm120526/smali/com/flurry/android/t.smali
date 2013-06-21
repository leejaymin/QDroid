.class final Lcom/flurry/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/android/e;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/e;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/e;

    iput-boolean p2, p0, Lcom/flurry/android/t;->c:Z

    iput-object p3, p0, Lcom/flurry/android/t;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/e;

    invoke-static {v0}, Lcom/flurry/android/e;->b(Lcom/flurry/android/e;)V

    iget-object v0, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/e;

    invoke-static {v0}, Lcom/flurry/android/e;->c(Lcom/flurry/android/e;)V

    iget-boolean v0, p0, Lcom/flurry/android/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/e;

    invoke-static {v0}, Lcom/flurry/android/e;->e(Lcom/flurry/android/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/ad;

    invoke-direct {v1, p0}, Lcom/flurry/android/ad;-><init>(Lcom/flurry/android/t;)V

    invoke-static {}, Lcom/flurry/android/e;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lcom/flurry/android/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/e;

    invoke-static {v0}, Lcom/flurry/android/e;->f(Lcom/flurry/android/e;)Lcom/flurry/android/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/am;->d()V

    :cond_1
    return-void
.end method
