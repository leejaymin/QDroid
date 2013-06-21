.class final Lcom/rubycell/moregame/center/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/a;

.field private final synthetic b:Lcom/rubycell/b/a/a;


# direct methods
.method constructor <init>(Lcom/rubycell/moregame/center/a;Lcom/rubycell/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/b;->a:Lcom/rubycell/moregame/center/a;

    iput-object p2, p0, Lcom/rubycell/moregame/center/b;->b:Lcom/rubycell/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/moregame/center/b;->a:Lcom/rubycell/moregame/center/a;

    invoke-static {v0}, Lcom/rubycell/moregame/center/a;->a(Lcom/rubycell/moregame/center/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/center/b;->a:Lcom/rubycell/moregame/center/a;

    invoke-static {v0}, Lcom/rubycell/moregame/center/a;->b(Lcom/rubycell/moregame/center/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/moregame/center/b;->b:Lcom/rubycell/b/a/a;

    invoke-virtual {v1}, Lcom/rubycell/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/moregame/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/moregame/center/b;->a:Lcom/rubycell/moregame/center/a;

    invoke-static {v0}, Lcom/rubycell/moregame/center/a;->b(Lcom/rubycell/moregame/center/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/moregame/center/b;->b:Lcom/rubycell/b/a/a;

    invoke-virtual {v1}, Lcom/rubycell/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/moregame/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
