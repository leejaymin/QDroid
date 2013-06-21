.class final Limoblife/toolbox/full/ui/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ab;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ab;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ag;->a:Limoblife/toolbox/full/ui/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/ag;->a:Limoblife/toolbox/full/ui/ab;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=imoblife.batterybooster&feature=search_result"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/ab;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
