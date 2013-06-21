.class final Lcom/rubycell/pianisthd/br;
.super Lcom/rubycell/a/d;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SongListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/br;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {p0}, Lcom/rubycell/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/pianisthd/br;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v0}, Lcom/rubycell/pianisthd/SongListActivity;->a(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/br;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-static {v1}, Lcom/rubycell/pianisthd/SongListActivity;->b(Lcom/rubycell/pianisthd/SongListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
