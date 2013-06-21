.class final Lcom/rubycell/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/e/c;


# direct methods
.method constructor <init>(Lcom/rubycell/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/e/e;->a:Lcom/rubycell/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/e/e;->a:Lcom/rubycell/e/c;

    iget-object v0, v0, Lcom/rubycell/e/c;->b:Landroid/content/Context;

    const-string v1, "No network connection"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
