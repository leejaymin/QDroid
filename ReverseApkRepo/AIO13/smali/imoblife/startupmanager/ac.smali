.class final Limoblife/startupmanager/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/RegisterActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Limoblife/startupmanager/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ac;->a:Limoblife/startupmanager/RegisterActivity;

    iput-object p2, p0, Limoblife/startupmanager/ac;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Limoblife/startupmanager/ac;->b:Ljava/lang/String;

    iget-object v1, p0, Limoblife/startupmanager/ac;->a:Limoblife/startupmanager/RegisterActivity;

    sget v2, Limoblife/startupmanager/R$string;->z_s_m:I

    invoke-virtual {v1, v2}, Limoblife/startupmanager/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/ac;->a:Limoblife/startupmanager/RegisterActivity;

    invoke-virtual {v0}, Limoblife/startupmanager/RegisterActivity;->finish()V

    iget-object v0, p0, Limoblife/startupmanager/ac;->a:Limoblife/startupmanager/RegisterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Limoblife/startupmanager/ac;->a:Limoblife/startupmanager/RegisterActivity;

    const-class v3, Limoblife/startupmanager/MyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Limoblife/startupmanager/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
