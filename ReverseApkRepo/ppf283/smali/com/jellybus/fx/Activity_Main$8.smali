.class Lcom/jellybus/fx/Activity_Main$8;
.super Landroid/os/Handler;
.source "Activity_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 1025
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v9, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1027
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->isSaveFin:Z
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$24(Lcom/jellybus/fx/Activity_Main;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$25(Lcom/jellybus/fx/Activity_Main;)I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 1028
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7, v10}, Lcom/jellybus/fx/Activity_Main;->access$26(Lcom/jellybus/fx/Activity_Main;I)V

    .line 1029
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->isSaveFin:Z
    invoke-static {v7, v10}, Lcom/jellybus/fx/Activity_Main;->access$27(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 1030
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_bar:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$28(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f02012e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1031
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_layout:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$29(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/RelativeLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1032
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_img1:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$30(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1033
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_img2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$31(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1036
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    const/16 v8, 0x64

    #calls: Lcom/jellybus/fx/Activity_Main;->reset_main_button(I)V
    invoke-static {v7, v8}, Lcom/jellybus/fx/Activity_Main;->access$21(Lcom/jellybus/fx/Activity_Main;I)V

    .line 1038
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->isShare:Z
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$32(Lcom/jellybus/fx/Activity_Main;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1039
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->isShare:Z
    invoke-static {v7, v10}, Lcom/jellybus/fx/Activity_Main;->access$33(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 1040
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v3, intent_share:Landroid/content/Intent;
    const-string v7, "image/png"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v5, intent_share_target:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v7}, Lcom/jellybus/fx/Activity_Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1047
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1059
    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v9, 0x7f050047

    invoke-virtual {v8, v9}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1060
    .local v0, chooserIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    new-array v7, v10, [Landroid/os/Parcelable;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/Parcelable;

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1061
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v7, v0}, Lcom/jellybus/fx/Activity_Main;->startActivity(Landroid/content/Intent;)V

    .line 1083
    .end local v0           #chooserIntent:Landroid/content/Intent;
    .end local v3           #intent_share:Landroid/content/Intent;
    .end local v5           #intent_share_target:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_1
    return-void

    .line 1047
    .restart local v3       #intent_share:Landroid/content/Intent;
    .restart local v5       #intent_share_target:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v6       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1048
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.jellybus.fx"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.jellybus.fxfree"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1050
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v4, intent_share_list:Landroid/content/Intent;
    const-string v8, "image/png"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    const-string v8, "android.intent.extra.STREAM"

    iget-object v9, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->savedFileURI:Landroid/net/Uri;
    invoke-static {v9}, Lcom/jellybus/fx/Activity_Main;->access$34(Lcom/jellybus/fx/Activity_Main;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1053
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const-string v8, "jellybus"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1055
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1064
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #intent_share:Landroid/content/Intent;
    .end local v4           #intent_share_list:Landroid/content/Intent;
    .end local v5           #intent_share_target:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v1, 0x0

    .line 1065
    .local v1, delay:I
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$25(Lcom/jellybus/fx/Activity_Main;)I

    move-result v7

    if-nez v7, :cond_5

    .line 1066
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_bar:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$28(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f02012f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1067
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7, v11}, Lcom/jellybus/fx/Activity_Main;->access$26(Lcom/jellybus/fx/Activity_Main;I)V

    .line 1068
    const/16 v1, 0x2bc

    .line 1081
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$35(Lcom/jellybus/fx/Activity_Main;)Landroid/os/Handler;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1069
    :cond_5
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$25(Lcom/jellybus/fx/Activity_Main;)I

    move-result v7

    if-ne v7, v11, :cond_6

    .line 1070
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_bar:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$28(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020130

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1071
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7, v12}, Lcom/jellybus/fx/Activity_Main;->access$26(Lcom/jellybus/fx/Activity_Main;I)V

    .line 1072
    const/16 v1, 0xc8

    goto :goto_2

    .line 1073
    :cond_6
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$25(Lcom/jellybus/fx/Activity_Main;)I

    move-result v7

    if-ne v7, v12, :cond_7

    .line 1074
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_bar:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$28(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020131

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1075
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7, v9}, Lcom/jellybus/fx/Activity_Main;->access$26(Lcom/jellybus/fx/Activity_Main;I)V

    .line 1076
    const/16 v1, 0x2bc

    goto :goto_2

    .line 1077
    :cond_7
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->page:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$25(Lcom/jellybus/fx/Activity_Main;)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 1078
    iget-object v7, p0, Lcom/jellybus/fx/Activity_Main$8;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->save_bar:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Main;->access$28(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020132

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    const/16 v1, 0x15e

    goto :goto_2
.end method
