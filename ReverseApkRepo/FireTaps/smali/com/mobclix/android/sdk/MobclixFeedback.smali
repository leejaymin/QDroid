.class public Lcom/mobclix/android/sdk/MobclixFeedback;
.super Ljava/lang/Object;
.source "MobclixFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixFeedback$Listener;,
        Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;,
        Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static controller:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "mobclixFeedback"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixFeedback;->TAG:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    sput-object v0, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendComment(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "comment"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixFeedback;->sendComment(Landroid/app/Activity;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    return-void
.end method

.method public static sendComment(Landroid/app/Activity;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 7
    .parameter "c"
    .parameter "comment"
    .parameter "l"

    .prologue
    const-string v4, "UTF-8"

    .line 20
    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    invoke-static {p0}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 25
    sget-object v4, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getFeedbackServer()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v2, params:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v4, "p=android&t=com"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v4, "&a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    const-string v4, "&v="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string v4, "&m="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    const-string v4, "&d="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    const-string v4, "&dt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const-string v4, "&os="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v4, "&c="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, p2}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    .local v0, commentThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 36
    .end local v0           #commentThread:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0
.end method

.method public static sendRatings(Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;)V
    .locals 1
    .parameter "c"
    .parameter "ratings"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixFeedback;->sendRatings(Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    return-void
.end method

.method public static sendRatings(Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 7
    .parameter "c"
    .parameter "ratings"
    .parameter "l"

    .prologue
    const-string v4, "UTF-8"

    .line 43
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 47
    sget-object v4, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getFeedbackServer()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v2, params:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v4, "p=android&t=rat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v4, "&a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v4, "&v="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v4, "&m="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v4, "&d="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v4, "&dt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v4, "&os="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v4, "&1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 58
    const-string v4, "&2="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 59
    const-string v4, "&3="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    const-string v4, "&4="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    const-string v4, "&5="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p1, Lcom/mobclix/android/sdk/MobclixFeedback$Ratings;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, p2}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    .local v0, commentThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 62
    .end local v0           #commentThread:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0
.end method
