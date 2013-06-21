.class Lcom/jellybus/fx/Activity_Main_Setting$1;
.super Ljava/lang/Object;
.source "Activity_Main_Setting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main_Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main_Setting;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main_Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v2, 0x7f050062

    const/4 v1, 0x0

    .line 98
    packed-switch p3, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #calls: Lcom/jellybus/fx/Activity_Main_Setting;->folderDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$0(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->network:Z
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$1(Lcom/jellybus/fx/Activity_Main_Setting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #calls: Lcom/jellybus/fx/Activity_Main_Setting;->clearWebView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$2(Lcom/jellybus/fx/Activity_Main_Setting;)V

    .line 107
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "http://www.youtube.com/watch?v=2FiOPVRg00g"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->network:Z
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$1(Lcom/jellybus/fx/Activity_Main_Setting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #calls: Lcom/jellybus/fx/Activity_Main_Setting;->clearWebView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$2(Lcom/jellybus/fx/Activity_Main_Setting;)V

    .line 117
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://www.facebook.com/PicsPlay"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->network:Z
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$1(Lcom/jellybus/fx/Activity_Main_Setting;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #calls: Lcom/jellybus/fx/Activity_Main_Setting;->clearWebView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$2(Lcom/jellybus/fx/Activity_Main_Setting;)V

    .line 127
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "http://www.jellybus.com"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 134
    :pswitch_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->network:Z
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$1(Lcom/jellybus/fx/Activity_Main_Setting;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #calls: Lcom/jellybus/fx/Activity_Main_Setting;->clearWebView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$2(Lcom/jellybus/fx/Activity_Main_Setting;)V

    .line 137
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "http://market.android.com/search?q=JellyBus&c=apps"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$1;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
