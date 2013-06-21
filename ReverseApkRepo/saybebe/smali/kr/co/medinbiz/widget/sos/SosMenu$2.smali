.class Lkr/co/medinbiz/widget/sos/SosMenu$2;
.super Ljava/lang/Object;
.source "SosMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/sos/SosMenu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/sos/SosMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$2;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$2;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #calls: Lkr/co/medinbiz/widget/sos/SosMenu;->sendSmsMessage()Z
    invoke-static {v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$3(Lkr/co/medinbiz/widget/sos/SosMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$2;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosMenu$2;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v2, v2, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    .line 84
    sget v3, Lkr/co/medinbiz/R$string;->message_sms_sent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$2;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    .line 91
    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosMenu$2;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v2, v2, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    sget v3, Lkr/co/medinbiz/R$string;->message_sms_sent_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    const/16 v3, 0x3e8

    .line 89
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
