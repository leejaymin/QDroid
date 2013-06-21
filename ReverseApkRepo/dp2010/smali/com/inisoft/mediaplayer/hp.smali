.class public final Lcom/inisoft/mediaplayer/hp;
.super Ljava/lang/Thread;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:I

.field e:Landroid/widget/TextView;

.field f:Lcom/inisoft/mediaplayer/ProgressDrawView;

.field final synthetic g:Lcom/inisoft/mediaplayer/hn;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/hn;Landroid/view/View;I)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hp;->g:Lcom/inisoft/mediaplayer/hn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/hp;->d:I

    const v0, 0x7f05004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hp;->a:Landroid/widget/ImageView;

    const v0, 0x7f050092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hp;->b:Landroid/widget/TextView;

    const v0, 0x7f050093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hp;->c:Landroid/widget/TextView;

    iput p3, p0, Lcom/inisoft/mediaplayer/hp;->d:I

    const v0, 0x7f050090

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hp;->e:Landroid/widget/TextView;

    const v0, 0x7f050091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/ProgressDrawView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hp;->f:Lcom/inisoft/mediaplayer/ProgressDrawView;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hp;->g:Lcom/inisoft/mediaplayer/hn;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hp;->g:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/inisoft/mediaplayer/hp;->d:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hp;->g:Lcom/inisoft/mediaplayer/hn;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hn;->b(Lcom/inisoft/mediaplayer/hn;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hp;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/inisoft/mediaplayer/hq;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/hq;-><init>(Lcom/inisoft/mediaplayer/hp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
