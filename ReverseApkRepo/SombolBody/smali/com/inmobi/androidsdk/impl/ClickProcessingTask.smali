.class public Lcom/inmobi/androidsdk/impl/ClickProcessingTask;
.super Landroid/os/AsyncTask;
.source "ClickProcessingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/inmobi/androidsdk/impl/AdUnit;

.field private final b:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private final c:Landroid/content/Context;

.field private d:Landroid/os/Message;

.field private e:Landroid/os/Message;

.field private f:Landroid/os/Message;

.field private g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Landroid/content/Context;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 37
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 38
    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->c:Landroid/content/Context;

    .line 39
    iput-object p4, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->d:Landroid/os/Message;

    .line 40
    iput-object p5, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->e:Landroid/os/Message;

    .line 41
    iput-object p6, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->f:Landroid/os/Message;

    .line 42
    iput-object p7, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Click target URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdActionName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_SMS:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v0, v1, :cond_3

    .line 95
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->b(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->f:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Operation could not be performed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Web:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-eq v0, v1, :cond_4

    .line 100
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v0, v1, :cond_7

    .line 105
    :cond_4
    const-string v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    const-string v0, "market:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    const-string v0, "market.android.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    .line 110
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->f:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error executing post click actions on URL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 118
    :cond_6
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->c:Landroid/content/Context;

    .line 119
    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    .line 118
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "extra_browser_type"

    .line 123
    const/16 v2, 0x65

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "FIRST_INSTANCE"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    .line 126
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->e:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->e:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 133
    :cond_7
    const-string v0, "android.intent.action.VIEW"

    .line 134
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->f:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 154
    const/4 v0, 0x0

    .line 155
    const-string v1, "&Body="

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 156
    if-lez v1, :cond_0

    .line 157
    const-string v0, "&Body="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    const-string v1, "compose_mode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    if-eqz v0, :cond_1

    .line 166
    const-string v1, "sms_body"

    .line 167
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    :try_start_0
    new-instance v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->c:Landroid/content/Context;

    .line 48
    invoke-direct {v2, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const-string v3, "x-mkhoj-adactiontype"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/impl/AdUnit;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->b:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 53
    invoke-virtual {v2, v3, v4, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->initiateClick(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :try_start_1
    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->getNewAdActionType()Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 59
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->adActionNamefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    .line 58
    invoke-virtual {v2, v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->setAdActionName(Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 63
    :goto_1
    const-string v2, "InMobiAndroidSDK_3.5.4"

    .line 64
    const-string v3, "Encountered generic exception initiating click"

    .line 63
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->a(Ljava/lang/String;)V

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->d:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->d:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method
