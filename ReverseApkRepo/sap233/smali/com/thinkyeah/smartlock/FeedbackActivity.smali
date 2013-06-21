.class public Lcom/thinkyeah/smartlock/FeedbackActivity;
.super Landroid/support/v4/app/g;


# static fields
.field private static p:Lcom/thinkyeah/common/c;


# instance fields
.field m:Landroid/widget/EditText;

.field n:Landroid/widget/EditText;

.field o:Landroid/widget/EditText;

.field private q:Lcom/thinkyeah/smartlock/az;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-class v1, Lcom/thinkyeah/smartlock/FeedbackActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/FeedbackActivity;->p:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/FeedbackActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Lcom/thinkyeah/smartlock/ay;->F()Lcom/thinkyeah/smartlock/ay;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "noAdviceDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/thinkyeah/common/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Lcom/thinkyeah/smartlock/ax;->F()Lcom/thinkyeah/smartlock/ax;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "incorrectEmailFormatDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/thinkyeah/smartlock/az;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/az;-><init>(Landroid/support/v4/app/g;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->q:Lcom/thinkyeah/smartlock/az;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->q:Lcom/thinkyeah/smartlock/az;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/az;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic g()Lcom/thinkyeah/common/c;
    .locals 1

    sget-object v0, Lcom/thinkyeah/smartlock/FeedbackActivity;->p:Lcom/thinkyeah/common/c;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->q:Lcom/thinkyeah/smartlock/az;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->setContentView(I)V

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/thinkyeah/smartlock/as;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/as;-><init>(Lcom/thinkyeah/smartlock/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->o:Landroid/widget/EditText;

    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/thinkyeah/smartlock/ar;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/ar;-><init>(Lcom/thinkyeah/smartlock/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/az;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->q:Lcom/thinkyeah/smartlock/az;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->q:Lcom/thinkyeah/smartlock/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/FeedbackActivity;->q:Lcom/thinkyeah/smartlock/az;

    invoke-virtual {v0, p0}, Lcom/thinkyeah/smartlock/az;->a(Landroid/support/v4/app/g;)V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/FeedbackActivity;->finish()V

    return-void
.end method
