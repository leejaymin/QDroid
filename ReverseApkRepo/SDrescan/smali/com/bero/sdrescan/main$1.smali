.class Lcom/bero/sdrescan/main$1;
.super Landroid/content/BroadcastReceiver;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bero/sdrescan/main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bero/sdrescan/main;


# direct methods
.method constructor <init>(Lcom/bero/sdrescan/main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    .line 117
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "sdrescan"

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "sdrescan"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media Scanner started scanning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$0(Lcom/bero/sdrescan/main;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 123
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$0(Lcom/bero/sdrescan/main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    iget-object v1, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/bero/sdrescan/main;->access$1(Lcom/bero/sdrescan/main;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bero/sdrescan/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_1
    const-string v0, "sdrescan"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media Scanner finished scanning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$0(Lcom/bero/sdrescan/main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$2(Lcom/bero/sdrescan/main;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 132
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$2(Lcom/bero/sdrescan/main;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const-string v0, "sdrescan"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media Scanner scanning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$0(Lcom/bero/sdrescan/main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    iget-object v1, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/bero/sdrescan/main;->access$1(Lcom/bero/sdrescan/main;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bero/sdrescan/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :goto_2
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$0(Lcom/bero/sdrescan/main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$2(Lcom/bero/sdrescan/main;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 145
    iget-object v0, p0, Lcom/bero/sdrescan/main$1;->this$0:Lcom/bero/sdrescan/main;

    #getter for: Lcom/bero/sdrescan/main;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/bero/sdrescan/main;->access$2(Lcom/bero/sdrescan/main;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 141
    :catch_0
    move-exception v0

    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
