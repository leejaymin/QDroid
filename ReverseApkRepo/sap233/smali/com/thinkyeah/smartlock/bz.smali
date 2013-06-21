.class final Lcom/thinkyeah/smartlock/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/by;

.field private final synthetic b:Landroid/widget/TextView;

.field private final synthetic c:Landroid/widget/EditText;

.field private final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/by;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bz;->a:Lcom/thinkyeah/smartlock/by;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/bz;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/thinkyeah/smartlock/bz;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/thinkyeah/smartlock/bz;->d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bz;->a:Lcom/thinkyeah/smartlock/by;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/by;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/bn;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bz;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/thinkyeah/smartlock/bz;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thinkyeah/smartlock/bn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bn;->g(Lcom/thinkyeah/smartlock/bn;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bz;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bz;->a:Lcom/thinkyeah/smartlock/by;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/by;->j()Landroid/support/v4/app/g;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bz;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
