.class final Lcom/inisoft/mediaplayer/gc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/el;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/gb;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inisoft/mediaplayer/es;I[B)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->am()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->c(Lcom/inisoft/mediaplayer/gb;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->d(Lcom/inisoft/mediaplayer/gb;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/hv;)V

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    const-string v2, "Audio"

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/hv;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->o(I)V

    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fs;->m(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->N()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->T()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->e(I)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fx;->b()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cj;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->o(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fs;->m(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->N()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->T()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->b(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->e(I)V

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gc;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fx;->b()V

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
