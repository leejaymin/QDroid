.class final Lcom/thinkyeah/smartlock/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/af;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/af;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->finish()V

    return-void
.end method
