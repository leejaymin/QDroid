.class Lcom/ui/LapseIt/ProListAdapter$1;
.super Ljava/lang/Object;
.source "ProVersionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/ProListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/ProListAdapter;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/ProListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/ProListAdapter$1;->this$0:Lcom/ui/LapseIt/ProListAdapter;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    const-string v2, "buy_pro_standard_amazon"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 263
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 264
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/ProListAdapter$1;->this$0:Lcom/ui/LapseIt/ProListAdapter;

    iget-object v2, v2, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v2, "buy_pro_standard"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 269
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/ProListAdapter$1;->this$0:Lcom/ui/LapseIt/ProListAdapter;

    iget-object v2, v2, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 270
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/ProListAdapter$1;->this$0:Lcom/ui/LapseIt/ProListAdapter;

    iget-object v2, v2, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 276
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 278
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
