.class final Limoblife/startupmanager/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/RegisterActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ab;->a:Limoblife/startupmanager/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Limoblife/startupmanager/ab;->a:Limoblife/startupmanager/RegisterActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Limoblife/startupmanager/ab;->a:Limoblife/startupmanager/RegisterActivity;

    sget v4, Limoblife/startupmanager/R$string;->uri:I

    invoke-virtual {v3, v4}, Limoblife/startupmanager/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Limoblife/startupmanager/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
