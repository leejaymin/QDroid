.class final Lcom/rubycell/moregame/center/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/MoreGameOneActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/i;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/moregame/center/i;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->setResult(I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/i;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->finish()V

    return-void
.end method
