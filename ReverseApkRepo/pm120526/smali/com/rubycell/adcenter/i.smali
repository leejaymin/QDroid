.class final Lcom/rubycell/adcenter/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/UpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/i;->a:Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/rubycell/adcenter/i;->a:Lcom/rubycell/adcenter/UpdateActivity;

    iget-object v1, p0, Lcom/rubycell/adcenter/i;->a:Lcom/rubycell/adcenter/UpdateActivity;

    const-string v2, "key_package_name"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
