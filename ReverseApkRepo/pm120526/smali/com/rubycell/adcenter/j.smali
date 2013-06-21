.class final Lcom/rubycell/adcenter/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/j;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/adcenter/j;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/UpdateActivity;->a(Lcom/rubycell/adcenter/UpdateActivity;)Lcom/rubycell/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubycell/d/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/j;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/UpdateActivity;->a(Lcom/rubycell/adcenter/UpdateActivity;)Lcom/rubycell/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubycell/d/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/j;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/UpdateActivity;->b()V

    :cond_0
    return-void
.end method
