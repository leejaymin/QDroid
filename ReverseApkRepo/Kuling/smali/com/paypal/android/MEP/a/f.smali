.class public final Lcom/paypal/android/MEP/a/f;
.super Lcom/paypal/android/c/i;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/paypal/android/c/e;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/c/i;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x2

    invoke-super {p0, p1}, Lcom/paypal/android/c/i;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/paypal/android/c/e;

    invoke-direct {v0, p1}, Lcom/paypal/android/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/c/e;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/c/e;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "Toggle Animation"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/f;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/c/e;

    invoke-virtual {v0}, Lcom/paypal/android/c/e;->b()V

    :goto_0
    iget-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/paypal/android/MEP/a/f;->b:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/f;->a:Lcom/paypal/android/c/e;

    invoke-virtual {v0}, Lcom/paypal/android/c/e;->a()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
