.class public final Lrt;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lrt;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic 癤욱븳援(Lrt;)Lcom/nbpcorp/mobilead/sdk/m;
    .locals 1

    iget-object v0, p0, Lrt;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    return-object v0
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "NBPMOBILEAD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONSOLE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    iget-object v0, p0, Lrt;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p3}, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    iget-object v0, p0, Lrt;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p4}, Lcom/nbpcorp/mobilead/sdk/m;->대쫫(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    iget-object v0, p0, Lrt;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌(Lcom/nbpcorp/mobilead/sdk/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru;

    invoke-direct {v1, p0}, Lru;-><init>(Lrt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method
