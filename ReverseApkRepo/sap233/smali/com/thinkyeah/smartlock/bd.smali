.class final Lcom/thinkyeah/smartlock/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bd;->a:Lcom/thinkyeah/smartlock/ForgotPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bd;->a:Lcom/thinkyeah/smartlock/ForgotPasswordActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->finish()V

    return-void
.end method
