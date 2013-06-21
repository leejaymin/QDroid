.class final Lcom/rubycell/adcenter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/UpdateActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/rubycell/adcenter/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-virtual {v0, v4}, Lcom/rubycell/adcenter/UpdateActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/rubycell/c/a/a;

    iget-object v1, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    iget-object v2, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-static {v2}, Lcom/rubycell/adcenter/UpdateActivity;->a(Lcom/rubycell/adcenter/UpdateActivity;)Lcom/rubycell/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubycell/d/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-static {v3}, Lcom/rubycell/adcenter/UpdateActivity;->b(Lcom/rubycell/adcenter/UpdateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/rubycell/c/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/c/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/rubycell/adcenter/k;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/UpdateActivity;->a()V

    goto :goto_0
.end method
