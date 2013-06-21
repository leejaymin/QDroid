.class public Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;
    }
.end annotation


# static fields
.field protected static final INJECTION_CODE:Ljava/lang/String; = null

.field private static final LCAT:Ljava/lang/String; = "TiWebViewBinding"

.field protected static final SCRIPT_INJECTION_ID:Ljava/lang/String; = "__ti_injection"


# instance fields
.field private apiBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;

.field private appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

.field private returnSemaphore:Ljava/util/concurrent/Semaphore;

.field private returnValue:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-string v4, "TiWebViewBinding"

    .line 37
    const-string v3, "json2.js"

    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    .local v1, jsonCode:Ljava/lang/StringBuilder;
    const-string v3, "binding.min.js"

    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    .local v2, tiCode:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, allCode:Ljava/lang/StringBuilder;
    const-string v3, "\n<script id=\"__ti_injection\">\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    if-nez v1, :cond_0

    .line 42
    const-string v3, "TiWebViewBinding"

    const-string v3, "Unable to read JSON code for injection"

    invoke-static {v4, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    if-nez v2, :cond_1

    .line 48
    const-string v3, "TiWebViewBinding"

    const-string v3, "Unable to read Titanium binding code for injection"

    invoke-static {v4, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_1
    const-string v3, "\n</script>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    .line 58
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    .line 66
    iput-object p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->webView:Landroid/webkit/WebView;

    .line 68
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lorg/appcelerator/titanium/TiContext;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->apiBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;

    .line 69
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lorg/appcelerator/titanium/TiContext;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->apiBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;

    const-string v1, "TiAPI"

    invoke-virtual {p2, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    const-string v1, "TiApp"

    invoke-virtual {p2, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;)V

    const-string v1, "_TiReturn"

    invoke-virtual {p2, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic access$102(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->evalJS(Ljava/lang/String;)V

    return-void
.end method

.method private evalJS(Ljava/lang/String;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 105
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private static readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10
    .parameter "fileName"

    .prologue
    const-string v9, "Problem closing input stream."

    const-string v8, "TiWebViewBinding"

    .line 81
    const-class v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ti/modules/titanium/ui/widget/webview/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 82
    .local v4, stream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, code:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 92
    :cond_0
    if-eqz v4, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    move-object v5, v0

    .line 100
    .end local v2           #line:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v5

    .line 95
    .restart local v2       #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TiWebViewBinding"

    const-string v5, "Problem closing input stream."

    invoke-static {v8, v9, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 88
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #line:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 89
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "TiWebViewBinding"

    const-string v6, "Error reading input stream"

    invoke-static {v5, v6, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const/4 v5, 0x0

    .line 92
    if-eqz v4, :cond_2

    .line 94
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 95
    :catch_2
    move-exception v1

    .line 96
    const-string v6, "TiWebViewBinding"

    const-string v6, "Problem closing input stream."

    invoke-static {v8, v9, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 92
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 94
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 97
    :cond_3
    :goto_3
    throw v5

    .line 95
    :catch_3
    move-exception v1

    .line 96
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "TiWebViewBinding"

    const-string v6, "Problem closing input stream."

    invoke-static {v8, v9, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public getJSValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "expression"

    .prologue
    const-string v4, "TiWebViewBinding"

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:_TiReturn.setValue((function(){try{return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+\"\";}catch(ti_eval_err){return \'\';}})());"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, code:Ljava/lang/String;
    const-string v2, "TiWebViewBinding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJSValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 117
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 119
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "TiWebViewBinding"

    const-string v2, "Interrupted"

    invoke-static {v4, v2, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v2, 0x0

    goto :goto_0
.end method
