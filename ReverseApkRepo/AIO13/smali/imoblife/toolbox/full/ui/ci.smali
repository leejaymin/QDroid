.class final Limoblife/toolbox/full/ui/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/by;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/by;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ci;->a:Limoblife/toolbox/full/ui/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/ci;->a:Limoblife/toolbox/full/ui/by;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ci;->a:Limoblife/toolbox/full/ui/by;

    invoke-static {v2}, Limoblife/toolbox/full/ui/by;->a(Limoblife/toolbox/full/ui/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Limoblife/toolbox/full/ui/AUninstaller;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/by;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
