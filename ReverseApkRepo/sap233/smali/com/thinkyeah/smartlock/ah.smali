.class final Lcom/thinkyeah/smartlock/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ah;->a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ah;->a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->finish()V

    return-void
.end method
