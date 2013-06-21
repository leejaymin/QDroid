.class final Lcom/rubycell/pianisthd/bh;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SongListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/bh;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/rubycell/pianisthd/SongListActivity;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "http://goo.gl/h9vpN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/bh;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/SongListActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
