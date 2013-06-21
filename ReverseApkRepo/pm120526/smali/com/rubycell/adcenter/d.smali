.class final Lcom/rubycell/adcenter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/d;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/adcenter/d;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->b(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Lcom/rubycell/adcenter/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a/b;->a()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/rubycell/adcenter/d;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/d;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->finish()V

    return-void
.end method
