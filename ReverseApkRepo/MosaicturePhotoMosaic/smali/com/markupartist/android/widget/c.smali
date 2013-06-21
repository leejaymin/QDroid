.class public final Lcom/markupartist/android/widget/c;
.super Lcom/markupartist/android/widget/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/markupartist/android/widget/a;-><init>(I)V

    iput-object p1, p0, Lcom/markupartist/android/widget/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/markupartist/android/widget/c;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/markupartist/android/widget/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/markupartist/android/widget/c;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/markupartist/android/widget/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/markupartist/android/widget/c;->a:Landroid/content/Context;

    sget v2, Lcom/markupartist/android/widget/a/d;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
