.class final Lcom/rubycell/adcenter/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/e;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/rubycell/adcenter/e;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->f(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/e;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    const-string v1, "com.rubycell.adfreekey.pro"

    invoke-static {v0, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/adcenter/e;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    const-string v1, "com.rubycell.adfreekey.pro"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
