.class final Lcom/mobclix/android/sdk/r;
.super Landroid/view/View;


# instance fields
.field a:Z

.field b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/r;->a:Z

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/r;->b:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/r;->a:Z

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/r;->b:Z

    return-void
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/r;->a:Z

    return v0
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/r;->b:Z

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/r;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/e;->E()V

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/r;->a:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/r;->b:Z

    :cond_0
    return-void
.end method
