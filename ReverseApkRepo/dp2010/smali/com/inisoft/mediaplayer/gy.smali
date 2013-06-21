.class final Lcom/inisoft/mediaplayer/gy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:J

.field g:J

.field final synthetic h:Lcom/inisoft/mediaplayer/gx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gx;)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->d:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->e:I

    iput-wide v1, p0, Lcom/inisoft/mediaplayer/gy;->f:J

    iput-wide v1, p0, Lcom/inisoft/mediaplayer/gy;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->h(Lcom/inisoft/mediaplayer/gt;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->h(Lcom/inisoft/mediaplayer/gt;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v2

    invoke-static {v2}, Lcom/inisoft/mediaplayer/gt;->h(Lcom/inisoft/mediaplayer/gt;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->d(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->d(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->d()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    int-to-float v0, v0

    sget v1, Lcom/inisoft/mediaplayer/gt;->a:F

    const/high16 v3, 0x447a

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->i(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitle;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->j(Lcom/inisoft/mediaplayer/gt;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Z)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->k(Lcom/inisoft/mediaplayer/gt;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->i(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitle;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->k(Lcom/inisoft/mediaplayer/gt;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VobSubtitle;->seek(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Lcom/inisoft/mediaplayer/VobSubtitleFrame;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/hm;->f(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;I)V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v0

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->e(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->l(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->i(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VobSubtitle;->getFrame()Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Lcom/inisoft/mediaplayer/VobSubtitleFrame;)V

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->l(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->l(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->getCur()I

    move-result v1

    iput v1, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget v1, v1, Lcom/inisoft/mediaplayer/gt;->f:I

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->l(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->l(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->f(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Lcom/inisoft/mediaplayer/VobSubtitleFrame;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    add-int/lit16 v1, v1, 0x2710

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Lcom/inisoft/mediaplayer/VobSubtitleFrame;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->d:I

    if-lt v0, v1, :cond_8

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->d:I

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_9

    :cond_8
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_11

    :cond_9
    :goto_2
    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->d:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-gt v0, v1, :cond_15

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget v1, v1, Lcom/inisoft/mediaplayer/gt;->f:I

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_a

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget v1, v1, Lcom/inisoft/mediaplayer/gt;->f:I

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/inisoft/mediaplayer/gt;->h:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gz;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    iget v3, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v1, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v1

    iput v1, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->e:I

    if-lt v0, v1, :cond_d

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->e:I

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_e

    :cond_d
    move v1, v2

    :goto_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_18

    :cond_e
    :goto_7
    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->e:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-gt v0, v1, :cond_1e

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget v1, v1, Lcom/inisoft/mediaplayer/gt;->g:I

    sub-int/2addr v0, v1

    if-le v0, v5, :cond_f

    :goto_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_1a

    :cond_f
    :goto_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget v1, v1, Lcom/inisoft/mediaplayer/gt;->g:I

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/inisoft/mediaplayer/gt;->h:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gz;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    iget v0, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    iget v2, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v1, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v1

    iput v1, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v3, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v3, v3, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v3

    iput v3, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget v3, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-lt v0, v3, :cond_12

    iput v1, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    goto/16 :goto_2

    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v3, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v3, v3, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v3

    iput v3, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget v3, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-lt v0, v3, :cond_14

    iput v1, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    goto/16 :goto_4

    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_15
    move v1, v2

    :goto_a
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v3, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v3, v3, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v3

    iput v3, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->f:I

    iget v3, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-lt v0, v3, :cond_16

    iput v1, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    goto/16 :goto_5

    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_17
    iput v2, p0, Lcom/inisoft/mediaplayer/gy;->a:I

    goto/16 :goto_5

    :cond_18
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v3, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v3

    iget-object v3, v3, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v3

    iput v3, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    iget v3, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-lt v0, v3, :cond_19

    iput v1, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    goto/16 :goto_7

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v1, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v1

    iput v1, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-lt v0, v1, :cond_1b

    iput v2, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    goto/16 :goto_9

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_1c
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, v1, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/gt;->e:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v1

    iput v1, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget v0, v0, Lcom/inisoft/mediaplayer/gt;->g:I

    iget v1, p0, Lcom/inisoft/mediaplayer/gy;->c:I

    if-lt v0, v1, :cond_1d

    iput v2, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    goto/16 :goto_0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    :cond_1e
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gy;->h:Lcom/inisoft/mediaplayer/gx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gx;->a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_1c

    goto/16 :goto_0

    :cond_1f
    iput v2, p0, Lcom/inisoft/mediaplayer/gy;->b:I

    goto/16 :goto_0
.end method
