.class final Lcom/rubycell/moregame/center/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/MoreGameOneActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/j;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/moregame/center/j;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->e(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/center/j;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    iget-object v1, p0, Lcom/rubycell/moregame/center/j;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->f(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/moregame/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/rubycell/moregame/center/j;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/moregame/center/j;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    iget-object v1, p0, Lcom/rubycell/moregame/center/j;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->f(Lcom/rubycell/moregame/center/MoreGameOneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/moregame/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
