.class Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;
.super Landroid/webkit/WebViewClient;
.source "DownloadThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/DownloadThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientDemo"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/DownloadThemeActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "mContext"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    .line 29
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, fileName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Kuling/skins/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, fileString:Ljava/lang/String;
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->context:Landroid/content/Context;

    invoke-static {v4, p2, v2}, Lcom/cocmoc/kulinglite/Utils;->WriteToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 32
    .local v3, hei:Z
    const-string v4, "Kuling"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DownloadThemeActivity: shouldOverrideUrlLoading() Success: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->dialog:Landroid/app/ProgressDialog;

    .line 35
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    iget-object v4, v4, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->dialog:Landroid/app/ProgressDialog;

    const-string v5, "Please wait while loading..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    iget-object v4, v4, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 37
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    iget-object v4, v4, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 38
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    iget-object v4, v4, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 41
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->setResult(ILandroid/content/Intent;)V

    .line 48
    iget-object v4, p0, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;->this$0:Lcom/cocmoc/kulinglite/DownloadThemeActivity;

    invoke-virtual {v4}, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->finish()V

    .line 49
    return v8

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
