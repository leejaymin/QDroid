.class final Limoblife/startupmanager/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ExitDialog;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ExitDialog;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/e;->a:Limoblife/startupmanager/ExitDialog;

    iput-object p2, p0, Limoblife/startupmanager/e;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Limoblife/startupmanager/e;->b:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://market.android.com/search?q=pname:imoblife.memorybooster.lite"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method