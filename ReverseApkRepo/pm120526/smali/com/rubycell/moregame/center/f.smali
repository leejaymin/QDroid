.class final Lcom/rubycell/moregame/center/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/MoreGameListActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/moregame/center/MoreGameListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/f;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/moregame/center/f;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/MoreGameListActivity;->setResult(I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/f;->a:Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/MoreGameListActivity;->finish()V

    return-void
.end method
