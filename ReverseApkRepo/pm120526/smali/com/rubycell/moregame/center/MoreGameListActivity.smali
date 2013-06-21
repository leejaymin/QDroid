.class public Lcom/rubycell/moregame/center/MoreGameListActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Lcom/rubycell/moregame/center/a;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Lcom/rubycell/b/a/d;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->h:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/rubycell/moregame/center/MoreGameListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/rubycell/moregame/center/MoreGameListActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->h:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/rubycell/moregame/center/MoreGameListActivity;)Lcom/rubycell/b/a/d;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->g:Lcom/rubycell/b/a/d;

    return-object v0
.end method

.method static synthetic c(Lcom/rubycell/moregame/center/MoreGameListActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/rubycell/moregame/center/MoreGameListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/rubycell/moregame/center/MoreGameListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/rubycell/moregame/center/MoreGameListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->setContentView(I)V

    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->e:Landroid/widget/ListView;

    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->f:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_app_in_amazon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->j:Z

    new-instance v0, Lcom/rubycell/b/a/d;

    invoke-direct {v0, p0}, Lcom/rubycell/b/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->g:Lcom/rubycell/b/a/d;

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/moregame/center/e;

    invoke-direct {v1, p0}, Lcom/rubycell/moregame/center/e;-><init>(Lcom/rubycell/moregame/center/MoreGameListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/moregame/center/f;

    invoke-direct {v1, p0}, Lcom/rubycell/moregame/center/f;-><init>(Lcom/rubycell/moregame/center/MoreGameListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/moregame/center/g;

    invoke-direct {v1, p0}, Lcom/rubycell/moregame/center/g;-><init>(Lcom/rubycell/moregame/center/MoreGameListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    invoke-virtual {p0, v1}, Lcom/rubycell/moregame/center/MoreGameListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->i:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/rubycell/moregame/center/h;

    invoke-direct {v0, p0, p0}, Lcom/rubycell/moregame/center/h;-><init>(Lcom/rubycell/moregame/center/MoreGameListActivity;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/center/MoreGameListActivity;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
