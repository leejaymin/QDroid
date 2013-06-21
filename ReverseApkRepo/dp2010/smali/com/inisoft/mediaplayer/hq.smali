.class final Lcom/inisoft/mediaplayer/hq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hp;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/hp;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget v1, v1, Lcom/inisoft/mediaplayer/hp;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget v2, v2, Lcom/inisoft/mediaplayer/hp;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->p()Lcom/inisoft/mediaplayer/ck;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->c:Lcom/inisoft/mediaplayer/ck;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->a:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->a:Landroid/widget/ImageView;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget v2, v2, Lcom/inisoft/mediaplayer/hp;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v1, v0, Lcom/inisoft/mediaplayer/hp;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget v2, v2, Lcom/inisoft/mediaplayer/hp;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/inisoft/mediaplayer/hr;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/hr;-><init>(Lcom/inisoft/mediaplayer/hq;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/inisoft/mediaplayer/hs;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/hs;-><init>(Lcom/inisoft/mediaplayer/hq;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->f:Lcom/inisoft/mediaplayer/ProgressDrawView;

    new-instance v1, Lcom/inisoft/mediaplayer/ht;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/ht;-><init>(Lcom/inisoft/mediaplayer/hq;)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ProgressDrawView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
