.class final Lcom/rubycell/a/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/rubycell/a/a;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/rubycell/a/c;

.field private final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/rubycell/a/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/rubycell/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/rubycell/a/b;->a:Lcom/rubycell/a/a;

    iput-object p2, p0, Lcom/rubycell/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/rubycell/a/b;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/rubycell/a/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/rubycell/a/b;->e:Lcom/rubycell/a/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/a/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/a/b;->a:Lcom/rubycell/a/a;

    iget-object v0, v0, Lcom/rubycell/a/a;->a:Lcom/rubycell/a/f;

    iget-object v1, p0, Lcom/rubycell/a/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/rubycell/a/b;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/rubycell/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/rubycell/a/f;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/rubycell/a/b;->e:Lcom/rubycell/a/c;

    iget-object v1, p0, Lcom/rubycell/a/b;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/rubycell/a/c;->a()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/rubycell/a/b;->e:Lcom/rubycell/a/c;

    iget-object v2, p0, Lcom/rubycell/a/b;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/rubycell/a/c;->a(Ljava/io/FileNotFoundException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/rubycell/a/b;->e:Lcom/rubycell/a/c;

    iget-object v2, p0, Lcom/rubycell/a/b;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/rubycell/a/c;->a(Ljava/net/MalformedURLException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/rubycell/a/b;->e:Lcom/rubycell/a/c;

    iget-object v2, p0, Lcom/rubycell/a/b;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/rubycell/a/c;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method
