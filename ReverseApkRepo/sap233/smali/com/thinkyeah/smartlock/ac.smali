.class final Lcom/thinkyeah/smartlock/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ac;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ac;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->finish()V

    return-void
.end method