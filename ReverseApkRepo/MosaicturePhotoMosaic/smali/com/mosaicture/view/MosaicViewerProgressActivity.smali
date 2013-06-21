.class public Lcom/mosaicture/view/MosaicViewerProgressActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/mosaicture/c/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/os/Handler;

.field private c:Landroid/os/Bundle;

.field private d:Lcom/mosaicture/c/f;

.field private final e:I

.field private final f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/mosaicture/view/o;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/o;-><init>(Lcom/mosaicture/view/MosaicViewerProgressActivity;)V

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/MosaicViewerProgressActivity;)Lcom/mosaicture/c/f;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->d:Lcom/mosaicture/c/f;

    return-object v0
.end method

.method static synthetic a(Lcom/mosaicture/view/MosaicViewerProgressActivity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/mosaicture/g/k;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->g:Z

    new-instance v0, Lcom/mosaicture/f/a;

    invoke-direct {v0, p1}, Lcom/mosaicture/f/a;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/mosaicture/f/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error reading file"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/mosaicture/c/j;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mosaicture/c/j;->e:Lcom/mosaicture/c/a;

    sget-object v1, Lcom/mosaicture/c/a;->f:Lcom/mosaicture/c/a;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/mosaicture/c/j;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mosaicture/c/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mosaicture/c/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mosaicture/d/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mosaicture/d/a;

    new-instance v1, Lcom/mosaicture/g/b;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mosaicture/g/b;-><init>(Ljava/lang/Integer;)V

    sput-object v1, Lcom/mosaicture/g/k;->f:Lcom/mosaicture/g/b;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v9, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    aget-object v4, v0, v1

    sget-object v5, Lcom/mosaicture/g/k;->f:Lcom/mosaicture/g/b;

    const/16 v6, 0x1b

    new-array v6, v6, [F

    iget v7, v4, Lcom/mosaicture/d/a;->d:I

    int-to-float v7, v7

    aput v7, v6, v2

    const/4 v7, 0x1

    iget v8, v4, Lcom/mosaicture/d/a;->m:I

    int-to-float v8, v8

    aput v8, v6, v7

    iget v7, v4, Lcom/mosaicture/d/a;->v:I

    int-to-float v7, v7

    aput v7, v6, v9

    const/4 v7, 0x3

    iget v8, v4, Lcom/mosaicture/d/a;->e:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x4

    iget v8, v4, Lcom/mosaicture/d/a;->n:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x5

    iget v8, v4, Lcom/mosaicture/d/a;->w:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x6

    iget v8, v4, Lcom/mosaicture/d/a;->f:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, v4, Lcom/mosaicture/d/a;->o:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x8

    iget v8, v4, Lcom/mosaicture/d/a;->x:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x9

    iget v8, v4, Lcom/mosaicture/d/a;->g:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, v4, Lcom/mosaicture/d/a;->p:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0xb

    iget v8, v4, Lcom/mosaicture/d/a;->y:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0xc

    iget v8, v4, Lcom/mosaicture/d/a;->h:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0xd

    iget v8, v4, Lcom/mosaicture/d/a;->q:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0xe

    iget v8, v4, Lcom/mosaicture/d/a;->z:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0xf

    iget v8, v4, Lcom/mosaicture/d/a;->i:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x10

    iget v8, v4, Lcom/mosaicture/d/a;->r:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x11

    iget v8, v4, Lcom/mosaicture/d/a;->A:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x12

    iget v8, v4, Lcom/mosaicture/d/a;->j:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x13

    iget v8, v4, Lcom/mosaicture/d/a;->s:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x14

    iget v8, v4, Lcom/mosaicture/d/a;->B:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x15

    iget v8, v4, Lcom/mosaicture/d/a;->k:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x16

    iget v8, v4, Lcom/mosaicture/d/a;->t:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x17

    iget v8, v4, Lcom/mosaicture/d/a;->C:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x18

    iget v8, v4, Lcom/mosaicture/d/a;->l:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x19

    iget v8, v4, Lcom/mosaicture/d/a;->u:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/16 v7, 0x1a

    iget v8, v4, Lcom/mosaicture/d/a;->D:I

    int-to-float v8, v8

    aput v8, v6, v7

    iget-wide v7, v4, Lcom/mosaicture/d/a;->E:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/mosaicture/g/b;->a([FLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    const/16 v4, 0x64

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->c:Landroid/os/Bundle;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->c:Landroid/os/Bundle;

    const-string v2, "percent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->c:Landroid/os/Bundle;

    const-string v1, "percent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_0
    if-gt v1, v4, :cond_3

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f070008

    invoke-virtual {p0, v3}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->g:Z

    if-nez v0, :cond_2

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f07001a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->g:Z

    :cond_2
    if-ne v1, v4, :cond_3

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->c:Landroid/os/Bundle;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->c:Landroid/os/Bundle;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/mosaicture/view/MosaicViewerPinchActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "imagePath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->finish()V

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v3}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->setRequestedOrientation(I)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->d:Lcom/mosaicture/c/f;

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->d:Lcom/mosaicture/c/f;

    invoke-virtual {v0, p0}, Lcom/mosaicture/c/f;->a(Lcom/mosaicture/c/d;)V

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    iput-object v1, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/mosaicture/view/p;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/p;-><init>(Lcom/mosaicture/view/MosaicViewerProgressActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->d:Lcom/mosaicture/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->d:Lcom/mosaicture/c/f;

    invoke-virtual {v0, p0}, Lcom/mosaicture/c/f;->b(Lcom/mosaicture/c/d;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->d:Lcom/mosaicture/c/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/MosaicViewerProgressActivity;->d:Lcom/mosaicture/c/f;

    :cond_0
    return-void
.end method
