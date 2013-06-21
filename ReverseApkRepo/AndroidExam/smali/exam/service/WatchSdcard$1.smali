.class Lexam/service/WatchSdcard$1;
.super Landroid/content/BroadcastReceiver;
.source "WatchSdcard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/WatchSdcard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Count:I

.field final synthetic this$0:Lexam/service/WatchSdcard;


# direct methods
.method constructor <init>(Lexam/service/WatchSdcard;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/WatchSdcard$1;->this$0:Lexam/service/WatchSdcard;

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lexam/service/WatchSdcard$1;->Count:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    iget v4, p0, Lexam/service/WatchSdcard$1;->Count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lexam/service/WatchSdcard$1;->Count:I

    .line 47
    const-string v4, "\uc218\uc2e0 \ud68c\uc218:%d, \uc704\uce58:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lexam/service/WatchSdcard$1;->Count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lexam/service/WatchSdcard$1;->this$0:Lexam/service/WatchSdcard;

    iget-object v4, v4, Lexam/service/WatchSdcard;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const-string v4, "read-only"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 51
    .local v2, readonly:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "\ubbf8\ub514\uc5b4 \uc7a5\ucc29 : "

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const-string v4, "\uc77d\uae30 \uc804\uc6a9"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, mount:Ljava/lang/String;
    invoke-static {p1, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 54
    .end local v1           #mount:Ljava/lang/String;
    .end local v2           #readonly:Z
    :cond_0
    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const-string v4, "\ubbf8\ub514\uc5b4 \ubd84\ub9ac"

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 57
    :cond_1
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    const-string v4, "\ubbf8\ub514\uc5b4 \uc798\ubabb\ub41c \uc704\uce58\uc5d0 \uc7a5\ucc29"

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 60
    :cond_2
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    const-string v4, "\ubbf8\ub514\uc5b4 \uc81c\uac70 \uc694\uccad"

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 63
    :cond_3
    const-string v4, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    const-string v4, "\ubbf8\ub514\uc5b4 \uc778\uc2dd \uc548\ub428"

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 66
    :cond_4
    return-void

    .line 51
    .restart local v2       #readonly:Z
    :cond_5
    const-string v4, "\uc77d\uae30 \uc4f0\uae30 \uac00\ub2a5"

    goto :goto_0
.end method
