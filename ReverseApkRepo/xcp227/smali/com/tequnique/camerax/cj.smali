.class public final Lcom/tequnique/camerax/cj;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/tequnique/camerax/ch;

.field final synthetic b:Lcom/tequnique/camerax/WebuploaderActivity;


# direct methods
.method public constructor <init>(Lcom/tequnique/camerax/WebuploaderActivity;Lcom/tequnique/camerax/ch;)V
    .locals 1

    iput-object p1, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tequnique/camerax/ch;->a:Lcom/tequnique/camerax/ch;

    iput-object v0, p0, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    iput-object p2, p0, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/db;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/db;-><init>(Lcom/tequnique/camerax/cj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/tequnique/camerax/dd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tequnique/camerax/dd;-><init>(Lcom/tequnique/camerax/cj;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/de;

    invoke-direct {v1, p0, p1}, Lcom/tequnique/camerax/de;-><init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/ck;

    invoke-direct {v1, p0, p1}, Lcom/tequnique/camerax/ck;-><init>(Lcom/tequnique/camerax/cj;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/cw;

    invoke-direct {v1, p0, p1, p2}, Lcom/tequnique/camerax/cw;-><init>(Lcom/tequnique/camerax/cj;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/cp;

    invoke-direct {v1, p0, p1}, Lcom/tequnique/camerax/cp;-><init>(Lcom/tequnique/camerax/cj;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/cx;

    invoke-direct {v1, p0, p1}, Lcom/tequnique/camerax/cx;-><init>(Lcom/tequnique/camerax/cj;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
