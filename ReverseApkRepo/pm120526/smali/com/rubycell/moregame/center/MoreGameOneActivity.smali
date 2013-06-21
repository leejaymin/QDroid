.class public Lcom/rubycell/moregame/center/MoreGameOneActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/rubycell/moregame/center/d;


# instance fields
.field public a:Lcom/rubycell/moregame/center/MoreGameView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;

.field private j:Lcom/rubycell/b/a/e;

.field private k:Landroid/widget/ProgressBar;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/rubycell/moregame/center/MoreGameOneActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Lcom/rubycell/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->j:Lcom/rubycell/b/a/e;

    return-object v0
.end method

.method static synthetic c(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/rubycell/b/a/b;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {}, Lcom/rubycell/moregame/center/MoreGameView;->a()Lcom/rubycell/moregame/a/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {}, Lcom/rubycell/moregame/center/MoreGameView;->a()Lcom/rubycell/moregame/a/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/moregame/a/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Lcom/rubycell/b/a/b;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {}, Lcom/rubycell/moregame/center/MoreGameView;->a()Lcom/rubycell/moregame/a/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {}, Lcom/rubycell/moregame/center/MoreGameView;->a()Lcom/rubycell/moregame/a/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/moregame/a/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/rubycell/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->setContentView(I)V

    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->e:Landroid/widget/Button;

    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_app_in_amazon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->m:Z

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/moregame/center/i;

    invoke-direct {v1, p0}, Lcom/rubycell/moregame/center/i;-><init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/moregame/center/j;

    invoke-direct {v1, p0}, Lcom/rubycell/moregame/center/j;-><init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/moregame/center/k;

    invoke-direct {v1, p0}, Lcom/rubycell/moregame/center/k;-><init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/moregame/center/MoreGameView;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a:Lcom/rubycell/moregame/center/MoreGameView;

    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-virtual {v0, p0}, Lcom/rubycell/moregame/center/MoreGameView;->setOnChangePageListener(Lcom/rubycell/moregame/center/d;)V

    invoke-static {}, Lcom/rubycell/moregame/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->l:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/rubycell/b/a/e;

    invoke-direct {v0, p0}, Lcom/rubycell/b/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->j:Lcom/rubycell/b/a/e;

    new-instance v0, Lcom/rubycell/moregame/center/l;

    invoke-direct {v0, p0, p0}, Lcom/rubycell/moregame/center/l;-><init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameOneActivity;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
