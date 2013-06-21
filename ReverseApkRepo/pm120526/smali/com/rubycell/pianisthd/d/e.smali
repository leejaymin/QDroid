.class public final Lcom/rubycell/pianisthd/d/e;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/media/MediaPlayer;

.field public static b:Z


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/rubycell/pianisthd/d/e;->b:Z

    sget-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/rubycell/pianisthd/d/e;->b:Z

    sget-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/rubycell/pianisthd/d/e;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/rubycell/pianisthd/d/f;

    invoke-direct {v1, p1}, Lcom/rubycell/pianisthd/d/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
