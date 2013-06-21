.class Lcom/ui/LapseIt/StartView$4;
.super Ljava/lang/Object;
.source "StartView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/StartView;->buildPromoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/StartView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/StartView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/StartView$4;->this$0:Lcom/ui/LapseIt/StartView;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 223
    invoke-static {}, Lcom/ui/LapseIt/Main;->isFullVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, sharingIntent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "Try Lapse It on your mobile device for free"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "Capture astonishing #timelapse videos with your mobile device. More info at http://www.lapseit.com"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v3, p0, Lcom/ui/LapseIt/StartView$4;->this$0:Lcom/ui/LapseIt/StartView;

    const-string v4, "Share using"

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    .line 239
    .end local v2           #sharingIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 232
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.ui.LapseItPro"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ui/LapseIt/StartView$4;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {v3, v1}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ui/LapseIt/StartView$4;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {v3, v1}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
