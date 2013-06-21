.class final Lcom/rubycell/moregame/center/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/MoreGameOneActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/moregame/center/MoreGameOneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/k;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/moregame/center/k;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    const-string v1, "http://mobile.kidapps.us/"

    invoke-static {v0, v1}, Lcom/rubycell/moregame/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/k;->a:Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/MoreGameOneActivity;->finish()V

    return-void
.end method
