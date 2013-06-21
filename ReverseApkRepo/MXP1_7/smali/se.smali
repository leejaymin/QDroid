.class public Lse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lse;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 癤욱븳援(Lse;)Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;
    .locals 1

    iget-object v0, p0, Lse;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lse;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\ub354 \ubcf4\uae30"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lse;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lsf;

    invoke-direct {v2, p0}, Lsf;-><init>(Lse;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lse;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->ㅼ꽑嫄:Landroid/app/AlertDialog;

    iget-object v0, p0, Lse;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->ㅼ꽑嫄:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
