.class final Lcom/rubycell/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/a/j;


# direct methods
.method constructor <init>(Lcom/rubycell/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/a/k;->a:Lcom/rubycell/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/a/k;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->a(Lcom/rubycell/a/j;)Lcom/rubycell/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/rubycell/a/h;->a()V

    iget-object v0, p0, Lcom/rubycell/a/k;->a:Lcom/rubycell/a/j;

    invoke-virtual {v0}, Lcom/rubycell/a/j;->dismiss()V

    return-void
.end method
