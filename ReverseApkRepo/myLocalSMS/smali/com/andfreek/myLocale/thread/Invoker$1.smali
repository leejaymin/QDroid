.class Lcom/andfreek/myLocale/thread/Invoker$1;
.super Ljava/lang/Object;
.source "Invoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andfreek/myLocale/thread/Invoker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andfreek/myLocale/thread/Invoker;

.field private final synthetic val$transValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/andfreek/myLocale/thread/Invoker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->this$0:Lcom/andfreek/myLocale/thread/Invoker;

    iput-object p2, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->val$transValue:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 140
    const-string v4, "RAMES"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "++++++++++++++222222message="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->val$transValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->this$0:Lcom/andfreek/myLocale/thread/Invoker;

    #getter for: Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/andfreek/myLocale/thread/Invoker;->access$0(Lcom/andfreek/myLocale/thread/Invoker;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->this$0:Lcom/andfreek/myLocale/thread/Invoker;

    #getter for: Lcom/andfreek/myLocale/thread/Invoker;->number:Ljava/lang/String;
    invoke-static {v5}, Lcom/andfreek/myLocale/thread/Invoker;->access$1(Lcom/andfreek/myLocale/thread/Invoker;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->val$transValue:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/andfreek/myLocale/activity/util/MyMessageUtil;->sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "address"

    iget-object v5, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->this$0:Lcom/andfreek/myLocale/thread/Invoker;

    #getter for: Lcom/andfreek/myLocale/thread/Invoker;->number:Ljava/lang/String;
    invoke-static {v5}, Lcom/andfreek/myLocale/thread/Invoker;->access$1(Lcom/andfreek/myLocale/thread/Invoker;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v4, "protocol"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v4, "thread_id"

    iget-object v5, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->this$0:Lcom/andfreek/myLocale/thread/Invoker;

    #getter for: Lcom/andfreek/myLocale/thread/Invoker;->threadId:Ljava/lang/String;
    invoke-static {v5}, Lcom/andfreek/myLocale/thread/Invoker;->access$2(Lcom/andfreek/myLocale/thread/Invoker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v4, "read"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v4, "status"

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v4, "type"

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "body"

    iget-object v5, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->val$transValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "content://sms/outbox"

    .line 152
    .local v2, uriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, uriSms:Landroid/net/Uri;
    iget-object v4, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->this$0:Lcom/andfreek/myLocale/thread/Invoker;

    #getter for: Lcom/andfreek/myLocale/thread/Invoker;->cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/andfreek/myLocale/thread/Invoker;->access$3(Lcom/andfreek/myLocale/thread/Invoker;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, retUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/andfreek/myLocale/thread/Invoker$1;->this$0:Lcom/andfreek/myLocale/thread/Invoker;

    #getter for: Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/andfreek/myLocale/thread/Invoker;->access$0(Lcom/andfreek/myLocale/thread/Invoker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 158
    return-void
.end method
