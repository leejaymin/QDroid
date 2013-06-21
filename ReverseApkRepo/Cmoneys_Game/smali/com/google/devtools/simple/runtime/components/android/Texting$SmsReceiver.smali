.class Lcom/google/devtools/simple/runtime/components/android/Texting$SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/simple/runtime/components/android/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Texting;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Texting;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Texting$SmsReceiver;->this$0:Lcom/google/devtools/simple/runtime/components/android/Texting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/android/Texting;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 63
    .local v3, messages:[Landroid/telephony/gsm/SmsMessage;
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 64
    .local v1, message:Landroid/telephony/gsm/SmsMessage;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, from:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, messageText:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Texting$SmsReceiver;->this$0:Lcom/google/devtools/simple/runtime/components/android/Texting;

    invoke-virtual {v4, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v0           #from:Ljava/lang/String;
    .end local v2           #messageText:Ljava/lang/String;
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v4, "Simple"

    const-string v5, "Sms message suppposedly received but with no actual content."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
