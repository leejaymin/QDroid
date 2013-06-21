.class final Lcom/inisoft/mediaplayer/fl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/el;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inisoft/mediaplayer/es;I[B)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "playback_speed"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const/4 v2, -0x5

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->n(Lcom/inisoft/mediaplayer/PlayerActivity;)I

    move-result v0

    const/16 v2, -0xa

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->n(Lcom/inisoft/mediaplayer/PlayerActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->am()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->i(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->i(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->j(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/hv;)V

    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    const-string v2, "Audio"

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/hv;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->o(I)V

    :goto_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inisoft/mediaplayer/fs;->m(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->N()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->T()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->e(I)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :cond_4
    :goto_5
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/cj;->s()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const/4 v2, -0x5

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VideoView;->g(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->o(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inisoft/mediaplayer/fs;->m(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->o(Lcom/inisoft/mediaplayer/PlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->p()V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->N()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->T()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fl;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->e(I)V

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method
