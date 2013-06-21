.class final Lcom/flurry/android/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Z

.field private synthetic c:Lcom/flurry/android/e;


# direct methods
.method constructor <init>(Lcom/flurry/android/e;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/v;->c:Lcom/flurry/android/e;

    iput-object p2, p0, Lcom/flurry/android/v;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/flurry/android/v;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/android/v;->c:Lcom/flurry/android/e;

    invoke-static {v0}, Lcom/flurry/android/e;->a(Lcom/flurry/android/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/v;->c:Lcom/flurry/android/e;

    iget-object v1, p0, Lcom/flurry/android/v;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/e;->a(Lcom/flurry/android/e;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/v;->c:Lcom/flurry/android/e;

    iget-object v1, p0, Lcom/flurry/android/v;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/flurry/android/v;->b:Z

    invoke-static {v0, v1, v2}, Lcom/flurry/android/e;->a(Lcom/flurry/android/e;Landroid/content/Context;Z)V

    return-void
.end method
