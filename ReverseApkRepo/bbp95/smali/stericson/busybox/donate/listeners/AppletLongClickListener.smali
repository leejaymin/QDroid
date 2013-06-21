.class public Lstericson/busybox/donate/listeners/AppletLongClickListener;
.super Ljava/lang/Object;
.source "AppletLongClickListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/BaseActivity;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/BaseActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lstericson/busybox/donate/listeners/AppletLongClickListener;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    .line 24
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .parameter "v"

    .prologue
    const v13, 0x7f0b003d

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 27
    const v6, 0x7f050012

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 29
    .local v0, applet:Landroid/widget/CheckBox;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->isAppletAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 33
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lstericson/busybox/donate/listeners/AppletLongClickListener$1;

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "busybox "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --help"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v2, p0, v6, v7, v5}, Lstericson/busybox/donate/listeners/AppletLongClickListener$1;-><init>(Lstericson/busybox/donate/listeners/AppletLongClickListener;I[Ljava/lang/String;Ljava/util/List;)V

    .line 46
    .local v2, command:Lcom/stericson/RootTools/Command;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 48
    const-string v1, ""

    .line 50
    .local v1, appletInfo:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 58
    iget-object v6, p0, Lstericson/busybox/donate/listeners/AppletLongClickListener;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    const/4 v7, 0x0

    iget-object v8, p0, Lstericson/busybox/donate/listeners/AppletLongClickListener;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    invoke-virtual {v6, v1, v7, v8}, Lstericson/busybox/donate/Activity/BaseActivity;->initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 69
    .end local v1           #appletInfo:Ljava/lang/String;
    .end local v2           #command:Lcom/stericson/RootTools/Command;
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return v11

    .line 50
    .restart local v1       #appletInfo:Ljava/lang/String;
    .restart local v2       #command:Lcom/stericson/RootTools/Command;
    .restart local v5       #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 52
    .local v4, info:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "multi-call binary"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 60
    .end local v1           #appletInfo:Ljava/lang/String;
    .end local v2           #command:Lcom/stericson/RootTools/Command;
    .end local v4           #info:Ljava/lang/String;
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 62
    .local v3, e:Ljava/lang/Exception;
    iget-object v6, p0, Lstericson/busybox/donate/listeners/AppletLongClickListener;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    invoke-static {v6, v13, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 67
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lstericson/busybox/donate/listeners/AppletLongClickListener;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    invoke-static {v6, v13, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
