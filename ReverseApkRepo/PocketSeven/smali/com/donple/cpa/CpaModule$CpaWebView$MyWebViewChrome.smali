.class Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;
.super Landroid/webkit/WebChromeClient;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule$CpaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewChrome"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/donple/cpa/CpaModule$CpaWebView;


# direct methods
.method private constructor <init>(Lcom/donple/cpa/CpaModule$CpaWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/donple/cpa/CpaModule$CpaWebView;Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 932
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v3

    #getter for: Lcom/donple/cpa/CpaModule;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$15(Lcom/donple/cpa/CpaModule;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 935
    const-string v3, "\uc54c\ub9bc"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 936
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 937
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v0

    #getter for: Lcom/donple/cpa/CpaModule;->images:Ljava/util/Map;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$16(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 938
    const-string v3, "\ud655\uc778"

    new-instance v4, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$1;

    invoke-direct {v4, p0, p4}, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$1;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 946
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v1

    .line 952
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 961
    if-eqz p3, :cond_0

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 964
    const-string v3, "<DONPLE_CPA>"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 967
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v3

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule$App;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 969
    const-string v1, "\t>> \uc774\ubbf8 \uc11c\ubc84\ub85c\ubd80\ud130\uc758 \ud1b5\uc2e0\uc774 \uc644\ub8cc\ub41c \uad11\uace0\uc785\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    move v1, v2

    .line 1033
    :cond_0
    :goto_0
    return v1

    .line 974
    :cond_1
    const-string v3, "<DONPLE_CPA>"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 977
    const-string v3, "tel"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 980
    const-string v3, "tel"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, tel:Ljava/lang/String;
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 983
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 987
    :cond_2
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 988
    const-string v3, "tel="

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t>> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v4}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v4

    #calls: Lcom/donple/cpa/CpaModule;->getTel()Ljava/lang/String;
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$17(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 993
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v3

    #calls: Lcom/donple/cpa/CpaModule;->getTel()Ljava/lang/String;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$17(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 995
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v3

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/donple/cpa/CpaModule$App;->setCpaParams(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 1005
    :goto_1
    new-instance v3, Lcom/donple/cpa/CpaModule$CmdProcessTask;

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v4}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/donple/cpa/CpaModule$CmdProcessTask;-><init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$CmdProcessTask;)V

    new-array v4, v2, [Lcom/donple/cpa/CpaModule$App;

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v5}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v5

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/donple/cpa/CpaModule$CmdProcessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v0           #tel:Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 1007
    goto/16 :goto_0

    .line 1000
    .restart local v0       #tel:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v3

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<INVALID>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/donple/cpa/CpaModule$App;->setCpaParams(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_1

    .line 1010
    .end local v0           #tel:Ljava/lang/String;
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v3

    #getter for: Lcom/donple/cpa/CpaModule;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$15(Lcom/donple/cpa/CpaModule;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1011
    const-string v3, "\uc54c\ub9bc"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1012
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1013
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    #getter for: Lcom/donple/cpa/CpaModule;->images:Ljava/util/Map;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$16(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1014
    const-string v3, "\ud655\uc778"

    new-instance v4, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$2;

    invoke-direct {v4, p0, p4}, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$2;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1022
    const-string v3, "\ucde8\uc18c"

    new-instance v4, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$3;

    invoke-direct {v4, p0, p4}, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$3;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1029
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1030
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v1, v2

    .line 1031
    goto/16 :goto_0
.end method
