.class final Lcom/rubycell/pianisthd/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/b/c;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/b/d;->a:Lcom/rubycell/pianisthd/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/b/d;->a:Lcom/rubycell/pianisthd/b/c;

    iget-object v0, v0, Lcom/rubycell/pianisthd/b/c;->b:Landroid/content/Context;

    const-string v1, "Your SD Card is unmounted or read-only. Sound files cannot be downloaded"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    new-instance v0, Lcom/rubycell/pianisthd/b/b;

    iget-object v1, p0, Lcom/rubycell/pianisthd/b/d;->a:Lcom/rubycell/pianisthd/b/c;

    iget-object v1, v1, Lcom/rubycell/pianisthd/b/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/rubycell/pianisthd/b/d;->a:Lcom/rubycell/pianisthd/b/c;

    iget-object v2, v2, Lcom/rubycell/pianisthd/b/c;->e:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/b/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/tapjoy/av;->a(Lcom/tapjoy/ap;)V

    goto :goto_0
.end method
