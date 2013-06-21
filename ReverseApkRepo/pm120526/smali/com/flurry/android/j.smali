.class final Lcom/flurry/android/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/flurry/android/i;


# direct methods
.method constructor <init>(Lcom/flurry/android/i;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/j;->b:Lcom/flurry/android/i;

    iput-object p2, p0, Lcom/flurry/android/j;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flurry/android/j;->b:Lcom/flurry/android/i;

    invoke-static {v0}, Lcom/flurry/android/i;->a(Lcom/flurry/android/i;)Landroid/text/SpannedString;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/flurry/android/j;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/j;->b:Lcom/flurry/android/i;

    invoke-static {v0}, Lcom/flurry/android/i;->b(Lcom/flurry/android/i;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_0
.end method
