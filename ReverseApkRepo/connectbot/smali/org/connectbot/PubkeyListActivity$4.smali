.class Lorg/connectbot/PubkeyListActivity$4;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$4;->this$0:Lorg/connectbot/PubkeyListActivity;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 211
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 212
    .local v4, sdcard:Landroid/net/Uri;
    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$4;->this$0:Lorg/connectbot/PubkeyListActivity;

    const v6, 0x7f08001f

    invoke-virtual {v5, v6}, Lorg/connectbot/PubkeyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, pickerTitle:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "org.openintents.action.PICK_FILE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 217
    const-string v5, "org.openintents.extra.TITLE"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v5, "org.openintents.extra.BUTTON_TEXT"

    iget-object v6, p0, Lorg/connectbot/PubkeyListActivity$4;->this$0:Lorg/connectbot/PubkeyListActivity;

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Lorg/connectbot/PubkeyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :try_start_0
    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$4;->this$0:Lorg/connectbot/PubkeyListActivity;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lorg/connectbot/PubkeyListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return v8

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.dir/lysesoft.andexplorer.file"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v5, "explorer_title"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :try_start_1
    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$4;->this$0:Lorg/connectbot/PubkeyListActivity;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lorg/connectbot/PubkeyListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    .line 231
    .local v1, e1:Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$4;->this$0:Lorg/connectbot/PubkeyListActivity;

    #calls: Lorg/connectbot/PubkeyListActivity;->pickFileSimple()V
    invoke-static {v5}, Lorg/connectbot/PubkeyListActivity;->access$0(Lorg/connectbot/PubkeyListActivity;)V

    goto :goto_0
.end method
