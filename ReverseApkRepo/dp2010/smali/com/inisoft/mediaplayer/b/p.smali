.class final Lcom/inisoft/mediaplayer/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/n;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/p;)Lcom/inisoft/mediaplayer/b/n;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->e(Lcom/inisoft/mediaplayer/b/n;)Lafzkl/development/mColorPicker/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    new-instance v1, Lafzkl/development/mColorPicker/a;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/b/n;->d(Lcom/inisoft/mediaplayer/b/n;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/b/n;->f(Lcom/inisoft/mediaplayer/b/n;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lafzkl/development/mColorPicker/a;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;Lafzkl/development/mColorPicker/a;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->e(Lcom/inisoft/mediaplayer/b/n;)Lafzkl/development/mColorPicker/a;

    move-result-object v0

    new-instance v1, Lcom/inisoft/mediaplayer/b/q;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/q;-><init>(Lcom/inisoft/mediaplayer/b/p;)V

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/p;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->e(Lcom/inisoft/mediaplayer/b/n;)Lafzkl/development/mColorPicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/a;->show()V

    return-void
.end method
