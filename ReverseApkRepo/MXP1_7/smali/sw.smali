.class public Lsw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lsw;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lsw;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/m;->洹(Lcom/nbpcorp/mobilead/sdk/m;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lsw;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v1}, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ(Lcom/nbpcorp/mobilead/sdk/m;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
