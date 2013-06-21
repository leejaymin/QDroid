.class final Lcom/inisoft/mediaplayer/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/by;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/by;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->c(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ch;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/inisoft/mediaplayer/ch;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    const-string v1, "/"

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/by;->b(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->c(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ch;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ch;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/by;->b(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/by;->b(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->c(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ch;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ch;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/by;->a()Lcom/inisoft/mediaplayer/cg;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/cg;->c:Lcom/inisoft/mediaplayer/cg;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/by;->c(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/by;->b(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/ci;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ca;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->b(Lcom/inisoft/mediaplayer/by;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1
.end method
