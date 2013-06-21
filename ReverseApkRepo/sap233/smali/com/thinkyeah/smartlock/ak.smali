.class final Lcom/thinkyeah/smartlock/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ak;->a:Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ak;->a:Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->a(Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
