.class final Lcom/mobclix/android/sdk/c;
.super Lcom/mobclix/android/sdk/n;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/b;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/c;->a:Lcom/mobclix/android/sdk/b;

    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/mobclix/android/sdk/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/c;->a:Lcom/mobclix/android/sdk/b;

    iget-object v0, v0, Lcom/mobclix/android/sdk/b;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
